.class Lcom/android/server/sip/SipSessionGroup$OptionsCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 1397
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1398
    return-void
.end method
