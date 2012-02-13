.class Lcom/android/phone/CallCard$1;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 289
    invoke-static {}, Lcom/android/phone/CallCard;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const-string v1, "On Hold Area Clicked! Switch call"

    #calls: Lcom/android/phone/CallCard;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 291
    return-void
.end method
