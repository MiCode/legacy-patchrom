.class Lcom/android/phone/SmscSettings$2;
.super Ljava/lang/Object;
.source "SmscSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SmscSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SmscSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/SmscSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/phone/SmscSettings$2;->this$0:Lcom/android/phone/SmscSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/SmscSettings$2;->this$0:Lcom/android/phone/SmscSettings;

    #calls: Lcom/android/phone/SmscSettings;->smsc_get()V
    invoke-static {v0}, Lcom/android/phone/SmscSettings;->access$200(Lcom/android/phone/SmscSettings;)V

    .line 107
    return-void
.end method
