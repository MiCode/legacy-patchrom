.class public Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;
.super Ljava/lang/Object;
.source "DlnaMediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/dlna/DlnaMediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ME_DLNA_CODECTYPE"
.end annotation


# instance fields
.field audioCodecLevel:I

.field audioCodecProfile:I

.field audioCodecType:I

.field final synthetic this$0:Lcom/motorola/android/dlna/DlnaMediaParser;

.field videoCodecLevel:I

.field videoCodecProfile:I

.field videoCodecType:I


# direct methods
.method public constructor <init>(Lcom/motorola/android/dlna/DlnaMediaParser;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/dlna/DlnaMediaParser$ME_DLNA_CODECTYPE;->this$0:Lcom/motorola/android/dlna/DlnaMediaParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
