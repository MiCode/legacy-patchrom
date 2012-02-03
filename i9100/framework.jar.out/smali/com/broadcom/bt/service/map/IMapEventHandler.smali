.class public interface abstract Lcom/broadcom/bt/service/map/IMapEventHandler;
.super Ljava/lang/Object;
.source "IMapEventHandler.java"


# virtual methods
.method public abstract onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method public abstract onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
.end method

.method public abstract onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method public abstract onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method public abstract onMsgGetInProgress()V
.end method

.method public abstract onMsgPushInProgress()V
.end method
