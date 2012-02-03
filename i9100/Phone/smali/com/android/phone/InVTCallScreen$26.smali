.class Lcom/android/phone/InVTCallScreen$26;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8797
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 8800
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8805
    :cond_0
    return-void
.end method
