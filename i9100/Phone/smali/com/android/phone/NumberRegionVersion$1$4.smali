.class Lcom/android/phone/NumberRegionVersion$1$4;
.super Ljava/lang/Object;
.source "NumberRegionVersion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NumberRegionVersion$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NumberRegionVersion$1;


# direct methods
.method constructor <init>(Lcom/android/phone/NumberRegionVersion$1;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$1$4;->this$1:Lcom/android/phone/NumberRegionVersion$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 221
    return-void
.end method
