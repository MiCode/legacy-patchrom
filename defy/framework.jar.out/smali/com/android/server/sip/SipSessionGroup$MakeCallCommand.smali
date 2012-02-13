.class Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeCallCommand"
.end annotation


# instance fields
.field private mSessionDescription:Ljava/lang/String;

.field private mTimeout:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "peerProfile"
    .parameter "sessionDescription"

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "peerProfile"
    .parameter "sessionDescription"
    .parameter "timeout"

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    return-void
.end method


# virtual methods
.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->getSource()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/sip/SipProfile;

    return-object p0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mSessionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;->mTimeout:I

    return v0
.end method
