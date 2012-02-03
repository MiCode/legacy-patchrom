.class Lcom/android/phone/RejectCallWithMsgLayout$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exit_on_sent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$2;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
