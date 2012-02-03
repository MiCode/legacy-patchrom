.class Landroid/webkit/WebView$WebSelectRequest;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebSelectRequest"
.end annotation


# instance fields
.field public m_enabledArray:[I

.field public m_focusCandidateName:Ljava/lang/String;

.field public m_focusCandidatePointer:I

.field public m_multiSelection:Z

.field public m_selectedArray:[I

.field public m_stringsArray:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
