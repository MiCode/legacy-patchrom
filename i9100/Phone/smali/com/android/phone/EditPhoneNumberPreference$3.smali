.class Lcom/android/phone/EditPhoneNumberPreference$3;
.super Landroid/os/Handler;
.source "EditPhoneNumberPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditPhoneNumberPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 513
    :goto_0
    return-void

    .line 510
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DONE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
