.class Lcom/android/phone/InternationalRoamingCallback$1;
.super Ljava/lang/Object;
.source "InternationalRoamingCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InternationalRoamingCallback;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InternationalRoamingCallback;


# direct methods
.method constructor <init>(Lcom/android/phone/InternationalRoamingCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/phone/InternationalRoamingCallback$1;->this$0:Lcom/android/phone/InternationalRoamingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/phone/InternationalRoamingCallback$1;->this$0:Lcom/android/phone/InternationalRoamingCallback;

    invoke-virtual {v0}, Lcom/android/phone/InternationalRoamingCallback;->handleIntRoamCBDialogOKPressed()V

    .line 273
    return-void
.end method
