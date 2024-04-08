
set(PAHOMQTT_SOURCES_DIR ${CMAKE_CURRENT_LIST_DIR})

set(PAHOMQTT_HEADERS
    ${PAHOMQTT_SOURCES_DIR}/Clients.h
    ${PAHOMQTT_SOURCES_DIR}/Heap.h
    ${PAHOMQTT_SOURCES_DIR}/LinkedList.h
    ${PAHOMQTT_SOURCES_DIR}/Log.h
    ${PAHOMQTT_SOURCES_DIR}/Messages.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTClient.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTClientPersistence.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTPacket.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTPacketOut.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTPersistenceDefault.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTPersistence.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTProtocolClient.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTProtocol.h
    ${PAHOMQTT_SOURCES_DIR}/MQTTProtocolOut.h
    ${PAHOMQTT_SOURCES_DIR}/SocketBuffer.h
    ${PAHOMQTT_SOURCES_DIR}/Socket.h
    ${PAHOMQTT_SOURCES_DIR}/SSLSocket.h
    ${PAHOMQTT_SOURCES_DIR}/StackTrace.h
    ${PAHOMQTT_SOURCES_DIR}/Thread.h
    ${PAHOMQTT_SOURCES_DIR}/Tree.h
    ${PAHOMQTT_SOURCES_DIR}/utf-8.h
    ${PAHOMQTT_SOURCES_DIR}/VersionInfo.h)



set(PAHOMQTT_SOURCES
    ${PAHOMQTT_SOURCES_DIR}/Clients.c
    ${PAHOMQTT_SOURCES_DIR}/Heap.c
    ${PAHOMQTT_SOURCES_DIR}/LinkedList.c
    ${PAHOMQTT_SOURCES_DIR}/Log.c
    ${PAHOMQTT_SOURCES_DIR}/Messages.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTClient.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTPacket.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTPacketOut.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTPersistence.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTPersistenceDefault.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTProtocolClient.c
    ${PAHOMQTT_SOURCES_DIR}/MQTTProtocolOut.c
    ${PAHOMQTT_SOURCES_DIR}/SocketBuffer.c
    ${PAHOMQTT_SOURCES_DIR}/Socket.c
    ${PAHOMQTT_SOURCES_DIR}/SSLSocket.c
    ${PAHOMQTT_SOURCES_DIR}/StackTrace.c
    ${PAHOMQTT_SOURCES_DIR}/Thread.c
    ${PAHOMQTT_SOURCES_DIR}/Tree.c
    ${PAHOMQTT_SOURCES_DIR}/utf-8.c
    ${EXT_SOURCES})

