.class Lcom/android/phone/InCallScreen$25;
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
    .line 2641
    iput-object p1, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2643
    iget-object v0, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p2}, Lcom/android/phone/InCallScreen;->setMute(Z)V

    .line 2644
    iget-object v0, p0, Lcom/android/phone/InCallScreen$25;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3700(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2645
    return-void
.end method
