.class Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->linkControls(Landroid/view/View;)V
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
    .line 270
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$600(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 273
    return-void
.end method
