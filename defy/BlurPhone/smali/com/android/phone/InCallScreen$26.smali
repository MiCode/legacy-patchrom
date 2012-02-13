.class Lcom/android/phone/InCallScreen$26;
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
    .line 2649
    iput-object p1, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p2}, Lcom/android/phone/InCallScreen;->setSpeaker(Z)V

    .line 2652
    iget-object v0, p0, Lcom/android/phone/InCallScreen$26;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2653
    return-void
.end method
