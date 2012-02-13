.class public Lcom/android/common/speech/LoggingEvents;
.super Ljava/lang/Object;
.source "LoggingEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/speech/LoggingEvents$VoiceIme;,
        Lcom/android/common/speech/LoggingEvents$VoiceSearch;
    }
.end annotation


# static fields
.field public static final ACTION_LOG_EVENT:Ljava/lang/String; = "com.android.common.speech.LOG_EVENT"

.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final EXTRA_CALLING_APP_NAME:Ljava/lang/String; = ""

.field public static final EXTRA_EVENT:Ljava/lang/String; = "extra_event"

.field public static final EXTRA_FLUSH:Ljava/lang/String; = "flush"

.field public static final EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method
