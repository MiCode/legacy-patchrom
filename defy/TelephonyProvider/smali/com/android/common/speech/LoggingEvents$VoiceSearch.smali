.class public Lcom/android/common/speech/LoggingEvents$VoiceSearch;
.super Ljava/lang/Object;
.source "LoggingEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/speech/LoggingEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceSearch"
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "googlemobile"

.field public static final EXTRA_N_BEST_CHOOSE_INDEX:Ljava/lang/String; = "index"

.field public static final EXTRA_QUERY_UPDATED_VALUE:Ljava/lang/String; = "value"

.field public static final N_BEST_CHOOSE:I = 0x2

.field public static final N_BEST_REVEAL:I = 0x1

.field public static final QUERY_UPDATED:I = 0x3

.field public static final RESULT_CLICKED:I = 0x4

.field public static final RETRY:I


# instance fields
.field final synthetic this$0:Lcom/android/common/speech/LoggingEvents;


# direct methods
.method public constructor <init>(Lcom/android/common/speech/LoggingEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/common/speech/LoggingEvents$VoiceSearch;->this$0:Lcom/android/common/speech/LoggingEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
