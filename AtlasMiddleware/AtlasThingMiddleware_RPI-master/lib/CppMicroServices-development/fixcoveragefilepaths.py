# The Cobertura report generated by OpenCppCoverage tool has file paths relative
# to the drive and in case-insensitive format. This script converts the file
# paths to be relative to the build directory and case-sensitive, which is
# required for uploading reports to codecov.io

import xml.etree.ElementTree as xml
import glob, os, re, sys, getopt

#----------- Remove prefix from a string -----------
def remove_prefix(line, prefix):
    if line.startswith(prefix):
        return line[len(prefix):]
    else:
        return line

#----------- Convert case-insensitive path to case-sensitive path -----------
def casedpath_unc(path):
    unc, p = os.path.splitunc(path)
    r = glob.glob(unc + re.sub(r'([^:/\\])(?=[/\\]|$)', r'[\1]', p))
    return r and r[0] or path

#----------------------------------------------------------------------
def modifyXML(infile, sourcepath, outfile):
    tree = xml.ElementTree(file=infile)
    root = tree.getroot()
    
    source_dir = root.find('sources/source')
    actual_src_drive, actual_src_tail = os.path.splitdrive(sourcepath)
    src_drive, src_tail = os.path.splitdrive(source_dir.text)
    if actual_src_drive.lower() == src_drive.lower():
        # Replace the filename with the case sensitive path
        # The result filename is relative to the provided source path
        for class_elem in root.iter("class"):
            filepath = "%s\%s" % (source_dir.text,class_elem.attrib['filename'])
            case_sensitive_filepath = casedpath_unc(filepath)
            rel_filepath = remove_prefix(case_sensitive_filepath, src_drive+actual_src_tail+"\\")
            class_elem.attrib['filename'] = rel_filepath
            class_elem.attrib['name'] = os.path.basename(rel_filepath)
        source_dir.text = sourcepath
        tree = xml.ElementTree(root)
        tree.write(outfile, encoding="utf-8",xml_declaration=True)
    else:
        print("Error: Source drive in input file does not match the provided source path's drive")
        sys.exit(-1)

def main(argv):
    inputfile = ''
    outputfile = ''
    sourcedir = ''
    try:
        opts, args = getopt.getopt(argv,"hi:o:s:",["ifile=","ofile=","sdir="])
    except getopt.GetoptError:
        print('fixcoveragepaths.py -i <inputfile> -s <sourcedirectory> -o <outputfile>')
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print('fixcoveragepaths.py -i <inputfile> -s <sourcedirectory> -o <outputfile>')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-o", "--ofile"):
            outputfile = arg
        elif opt in ("-s", "--sdir"):
            sourcedir = arg
    #print('Input file is ', inputfile)
    #print ('Output file is ', outputfile)
    #print ('Sources directory is ', sourcedir)
    modifyXML(inputfile, sourcedir, outputfile)
    
#----------------------------------------------------------------------
if __name__ == "__main__":
    main(sys.argv[1:])
