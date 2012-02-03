.class Lcom/android/phone/ManageConferenceUi$1;
.super Ljava/lang/Object;
.source "ManageConferenceUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ManageConferenceUi;->initialize(Lcom/android/phone/InCallScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManageConferenceUi;


# direct methods
.method constructor <init>(Lcom/android/phone/ManageConferenceUi;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$1;->this$0:Lcom/android/phone/ManageConferenceUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$1;->this$0:Lcom/android/phone/ManageConferenceUi;

    #getter for: Lcom/android/phone/ManageConferenceUi;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/ManageConferenceUi;->access$000(Lcom/android/phone/ManageConferenceUi;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 82
    return-void
.end method
