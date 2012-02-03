.class public interface abstract Lcom/android/internal/telephony/gsm/stk/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final START_MAIN_ACTIVITY:Ljava/lang/String; = "android.intent.action.stk.start_main_activity"

.field public static final STK_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final STK_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;)V
.end method

.method public abstract sentTerminalResponseForSetupMenu(Z)V
.end method

.method public abstract setEventListChannelStatus(Z)V
.end method

.method public abstract setEventListDataAvailable(Z)V
.end method

.method public abstract triggerCmd(Ljava/lang/String;)V
.end method
