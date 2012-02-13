.class Lcom/android/phone/InCallScreen$12;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2348
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Before calling setSpeaker... isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2349
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 2350
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2351
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2352
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v2, Lcom/android/phone/InCallScreen$OptionsMenuPress;->SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    #setter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$1202(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$OptionsMenuPress;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 2354
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0b0135

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2355
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v1

    if-nez p2, :cond_1

    move v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2360
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_1
    return-void

    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_1
    move v2, v4

    .line 2355
    goto :goto_0

    .line 2359
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, p2}, Lcom/android/phone/InCallScreen;->setSpeaker(Z)V

    goto :goto_1
.end method
