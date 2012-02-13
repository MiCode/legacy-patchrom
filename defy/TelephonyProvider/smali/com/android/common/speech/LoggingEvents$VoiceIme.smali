.class public Lcom/android/common/speech/LoggingEvents$VoiceIme;
.super Ljava/lang/Object;
.source "LoggingEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/speech/LoggingEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceIme"
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "voiceime"

.field public static final CANCEL_DURING_ERROR:I = 0xc

.field public static final CANCEL_DURING_LISTENING:I = 0xa

.field public static final CANCEL_DURING_WORKING:I = 0xb

.field public static final ERROR:I = 0xd

.field public static final EXTRA_AFTER_N_BEST_CHOOSE:Ljava/lang/String; = "after"

.field public static final EXTRA_BEFORE_N_BEST_CHOOSE:Ljava/lang/String; = "before"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "code"

.field public static final EXTRA_N_BEST_CHOOSE_INDEX:Ljava/lang/String; = "index"

.field public static final EXTRA_START_LOCALE:Ljava/lang/String; = "locale"

.field public static final EXTRA_START_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_START_SWIPE:Ljava/lang/String; = "swipe"

.field public static final EXTRA_TEXT_MODIFIED_LENGTH:Ljava/lang/String; = "length"

.field public static final EXTRA_TEXT_MODIFIED_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_TEXT_REPLACED_LENGTH:Ljava/lang/String; = "rlength"

.field public static final IME_TEXT_ACCEPTED:I = 0x15

.field public static final INPUT_ENDED:I = 0x12

.field public static final KEYBOARD_WARNING_DIALOG_CANCEL:I = 0x3

.field public static final KEYBOARD_WARNING_DIALOG_DISMISSED:I = 0x1

.field public static final KEYBOARD_WARNING_DIALOG_OK:I = 0x2

.field public static final KEYBOARD_WARNING_DIALOG_SHOWN:I = 0x0

.field public static final N_BEST_CHOOSE:I = 0x10

.field public static final PUNCTUATION_HINT_DISPLAYED:I = 0x9

.field public static final SETTINGS_WARNING_DIALOG_CANCEL:I = 0x7

.field public static final SETTINGS_WARNING_DIALOG_DISMISSED:I = 0x5

.field public static final SETTINGS_WARNING_DIALOG_OK:I = 0x6

.field public static final SETTINGS_WARNING_DIALOG_SHOWN:I = 0x4

.field public static final START:I = 0xe

.field public static final START_METHOD_BUTTON:I = 0x1

.field public static final START_METHOD_MOTION:I = 0x3

.field public static final START_METHOD_SWIPE:I = 0x2

.field public static final SWIPE_HINT_DISPLAYED:I = 0x8

.field public static final TEXT_MODIFIED:I = 0x11

.field public static final TEXT_MODIFIED_TYPE_CHOOSE_SUGGESTION:I = 0x1

.field public static final TEXT_MODIFIED_TYPE_TYPING_DELETION:I = 0x2

.field public static final TEXT_MODIFIED_TYPE_TYPING_INSERTION:I = 0x3

.field public static final TEXT_MODIFIED_TYPE_TYPING_INSERTION_PUNCTUATION:I = 0x4

.field public static final VOICE_INPUT_DELIVERED:I = 0xf

.field public static final VOICE_INPUT_SETTING_DISABLED:I = 0x14

.field public static final VOICE_INPUT_SETTING_ENABLED:I = 0x13


# instance fields
.field final synthetic this$0:Lcom/android/common/speech/LoggingEvents;


# direct methods
.method public constructor <init>(Lcom/android/common/speech/LoggingEvents;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/common/speech/LoggingEvents$VoiceIme;->this$0:Lcom/android/common/speech/LoggingEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
