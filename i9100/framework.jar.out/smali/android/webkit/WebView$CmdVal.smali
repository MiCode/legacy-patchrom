.class Landroid/webkit/WebView$CmdVal;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CmdVal"
.end annotation


# instance fields
.field public command:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebView;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 5851
    iput-object p1, p0, Landroid/webkit/WebView$CmdVal;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
