.class public final Landroid/media/MediaRecorder$MediaRecorderType;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaRecorderType"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final QCP_STAGEFRIGHT:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/MediaRecorder$MediaRecorderType;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
