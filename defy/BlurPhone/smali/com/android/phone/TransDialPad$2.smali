.class Lcom/android/phone/TransDialPad$2;
.super Ljava/lang/Object;
.source "TransDialPad.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TransDialPad;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TransDialPad;


# direct methods
.method constructor <init>(Lcom/android/phone/TransDialPad;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/TransDialPad$2;->this$0:Lcom/android/phone/TransDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/phone/TransDialPad$2;->this$0:Lcom/android/phone/TransDialPad;

    invoke-virtual {v0}, Lcom/android/phone/TransDialPad;->handleIPDialogCancelPressed()V

    .line 121
    return-void
.end method
