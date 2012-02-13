.class Lcom/android/phone/InCallScreen$7;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->initInCallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$app:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$7;->val$app:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2284
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    const-string v3, "Switch Call Clicked!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2286
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 2288
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->val$app:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_3

    .line 2289
    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->val$app:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    .line 2290
    .local v0, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v2, :cond_2

    .line 2291
    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 2292
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3202(Z)Z

    .line 2299
    .end local v0           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    :goto_0
    return-void

    .line 2293
    .restart local v0       #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v2, :cond_1

    .line 2294
    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->internalSwapCalls()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)V

    goto :goto_0

    .line 2297
    .end local v0           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen$7;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->internalSwapCalls()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)V

    goto :goto_0
.end method
