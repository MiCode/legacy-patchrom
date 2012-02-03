.class Lcom/android/server/sec/ClippedDataPickerDialog$2;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$2;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$2;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 268
    return-void
.end method
