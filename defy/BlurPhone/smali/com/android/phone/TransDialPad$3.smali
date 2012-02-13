.class Lcom/android/phone/TransDialPad$3;
.super Ljava/lang/Object;
.source "TransDialPad.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 123
    iput-object p1, p0, Lcom/android/phone/TransDialPad$3;->this$0:Lcom/android/phone/TransDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/TransDialPad$3;->this$0:Lcom/android/phone/TransDialPad;

    invoke-virtual {v0}, Lcom/android/phone/TransDialPad;->finish()V

    .line 126
    return-void
.end method
