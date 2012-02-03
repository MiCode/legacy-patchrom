.class public Lcom/android/internal/telephony/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Am$1;,
        Lcom/android/internal/telephony/Am$InstrumentationWatcher;,
        Lcom/android/internal/telephony/Am$IntentReceiver;,
        Lcom/android/internal/telephony/Am$MyActivityController;
    }
.end annotation


# static fields
.field private static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field private static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mDebugOption:Z

.field private mNextArg:I

.field private mWaitOption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 754
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/Am;

    invoke-direct {v1}, Lcom/android/internal/telephony/Am;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/Am;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 73
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private makeIntent()Landroid/content/Intent;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v7, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 117
    .local v6, hasIntentInfo:Z
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    .line 118
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, data:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 123
    .local v13, type:Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v11

    .local v11, opt:Ljava/lang/String;
    if-eqz v11, :cond_20

    .line 124
    const-string v16, "-a"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/4 v6, 0x1

    goto :goto_0

    .line 127
    :cond_0
    const-string v16, "-d"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 129
    const/4 v6, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const-string v16, "-t"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v13

    .line 132
    const/4 v6, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const-string v16, "-c"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/4 v6, 0x1

    goto :goto_0

    .line 136
    :cond_3
    const-string v16, "-e"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "--es"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 137
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, value:Ljava/lang/String;
    invoke-virtual {v7, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v6, 0x1

    .line 141
    goto :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_5
    const-string v16, "--esn"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9       #key:Ljava/lang/String;
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/4 v6, 0x1

    .line 145
    goto/16 :goto_0

    .end local v9           #key:Ljava/lang/String;
    :cond_6
    const-string v16, "--ei"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 148
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    const/4 v6, 0x1

    .line 150
    goto/16 :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_7
    const-string v16, "--ez"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 152
    .restart local v9       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v15

    .line 153
    .restart local v15       #value:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    move-object v0, v7

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    const/4 v6, 0x1

    .line 155
    goto/16 :goto_0

    .end local v9           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/String;
    :cond_8
    const-string v16, "-n"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, str:Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 158
    .local v4, cn:Landroid/content/ComponentName;
    if-nez v4, :cond_9

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad component name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 159
    :cond_9
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    const/4 v6, 0x1

    .line 161
    goto/16 :goto_0

    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v12           #str:Ljava/lang/String;
    :cond_a
    const-string v16, "-f"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v12

    .line 163
    .restart local v12       #str:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 164
    .end local v12           #str:Ljava/lang/String;
    :cond_b
    const-string v16, "--grant-read-uri-permission"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 165
    const/16 v16, 0x1

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 166
    :cond_c
    const-string v16, "--grant-write-uri-permission"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 167
    const/16 v16, 0x2

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 168
    :cond_d
    const-string v16, "--debug-log-resolution"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 169
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 170
    :cond_e
    const-string v16, "--activity-brought-to-front"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 171
    const/high16 v16, 0x40

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 172
    :cond_f
    const-string v16, "--activity-clear-top"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 173
    const/high16 v16, 0x400

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 174
    :cond_10
    const-string v16, "--activity-clear-when-task-reset"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 175
    const/high16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 176
    :cond_11
    const-string v16, "--activity-exclude-from-recents"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 177
    const/high16 v16, 0x80

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 178
    :cond_12
    const-string v16, "--activity-launched-from-history"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 179
    const/high16 v16, 0x10

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 180
    :cond_13
    const-string v16, "--activity-multiple-task"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 181
    const/high16 v16, 0x800

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 182
    :cond_14
    const-string v16, "--activity-no-animation"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 183
    const/high16 v16, 0x1

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 184
    :cond_15
    const-string v16, "--activity-no-history"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 185
    const/high16 v16, 0x4000

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 186
    :cond_16
    const-string v16, "--activity-no-user-action"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 187
    const/high16 v16, 0x4

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 188
    :cond_17
    const-string v16, "--activity-previous-is-top"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 189
    const/high16 v16, 0x100

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 190
    :cond_18
    const-string v16, "--activity-reorder-to-front"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 191
    const/high16 v16, 0x2

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 192
    :cond_19
    const-string v16, "--activity-reset-task-if-needed"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 193
    const/high16 v16, 0x20

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 194
    :cond_1a
    const-string v16, "--activity-single-top"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 195
    const/high16 v16, 0x2000

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 196
    :cond_1b
    const-string v16, "--receiver-registered-only"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 197
    const/high16 v16, 0x4000

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 198
    :cond_1c
    const-string v16, "--receiver-replace-pending"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 199
    const/high16 v16, 0x2000

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 200
    :cond_1d
    const-string v16, "-D"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 201
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    goto/16 :goto_0

    .line 202
    :cond_1e
    const-string v16, "-W"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 203
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    goto/16 :goto_0

    .line 205
    :cond_1f
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error: Unknown option: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 207
    const/16 v16, 0x0

    .line 233
    .end local p0
    :goto_1
    return-object v16

    .line 210
    .restart local p0
    :cond_20
    invoke-virtual {v7, v5, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v14

    .line 213
    .local v14, uri:Ljava/lang/String;
    if-eqz v14, :cond_25

    .line 214
    move-object v10, v7

    .line 215
    .local v10, oldIntent:Landroid/content/Intent;
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 216
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_21

    .line 217
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_21
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    if-nez v16, :cond_22

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_23

    .line 220
    :cond_22
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_23
    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 223
    .local v3, cats:Ljava/util/Set;
    if-eqz v3, :cond_24

    .line 224
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 225
    .end local p0
    .local v8, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_24

    .line 226
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 229
    .end local v8           #it:Ljava/util/Iterator;
    :cond_24
    const/4 v6, 0x1

    .line 232
    .end local v3           #cats:Ljava/util/Set;
    .end local v10           #oldIntent:Landroid/content/Intent;
    :cond_25
    if-nez v6, :cond_26

    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "No intent supplied"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_26
    move-object/from16 v16, v7

    .line 233
    goto :goto_1
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 862
    .local v0, arg:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 867
    .end local v0           #arg:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 864
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 865
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 867
    goto :goto_0
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 874
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 875
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 877
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 831
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    sub-int/2addr v3, v5

    aget-object v1, v2, v3

    .line 833
    .local v1, prev:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No argument expected after \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 835
    .end local v1           #prev:Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    iget-object v3, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    move-object v2, v4

    .line 856
    :goto_0
    return-object v2

    .line 838
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    aget-object v0, v2, v3

    .line 839
    .local v0, arg:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v4

    .line 840
    goto :goto_0

    .line 842
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 843
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    .line 844
    goto :goto_0

    .line 846
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    .line 847
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 848
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    .line 849
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 851
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 852
    goto :goto_0

    .line 855
    :cond_5
    iput-object v4, p0, Lcom/android/internal/telephony/Am;->mCurArgData:Ljava/lang/String;

    move-object v2, v0

    .line 856
    goto :goto_0
.end method

.method private run([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 81
    array-length v1, p1

    if-ge v1, v2, :cond_0

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 111
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_1

    .line 88
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to activity manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/Am;->mArgs:[Ljava/lang/String;

    .line 93
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 94
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/internal/telephony/Am;->mNextArg:I

    .line 96
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStart()V

    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v1, "startservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runStartService()V

    goto :goto_0

    .line 100
    :cond_3
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runInstrument()V

    goto :goto_0

    .line 102
    :cond_4
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->sendBroadcast()V

    goto :goto_0

    .line 104
    :cond_5
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runProfile()V

    goto :goto_0

    .line 106
    :cond_6
    const-string/jumbo v1, "monitor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->runMonitor()V

    goto :goto_0

    .line 109
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private runInstrument()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v2, 0x0

    .line 346
    .local v2, profileFile:Ljava/lang/String;
    const/4 v13, 0x0

    .line 347
    .local v13, wait:Z
    const/4 v12, 0x0

    .line 348
    .local v12, rawMode:Z
    const/4 v9, 0x0

    .line 349
    .local v9, no_window_animation:Z
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v4, args:Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, argKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 351
    .local v7, argValue:Ljava/lang/String;
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 354
    .local v14, wm:Landroid/view/IWindowManager;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v11

    .local v11, opt:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 355
    const-string v0, "-p"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_0
    const-string v0, "-w"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const/4 v13, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const-string v0, "-r"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const/4 v12, 0x1

    goto :goto_0

    .line 361
    :cond_2
    const-string v0, "-e"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    const-string v0, "--no_window_animation"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    const/4 v9, 0x1

    goto :goto_0

    .line 368
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 403
    :cond_5
    :goto_1
    return-void

    .line 374
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, cnArg:Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 376
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad component name: "

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    .line 379
    .local v5, watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    if-eqz v13, :cond_8

    .line 380
    new-instance v5, Lcom/android/internal/telephony/Am$InstrumentationWatcher;

    .end local v5           #watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 381
    .restart local v5       #watcher:Lcom/android/internal/telephony/Am$InstrumentationWatcher;
    invoke-virtual {v5, v12}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 383
    :cond_8
    const/4 v10, 0x0

    .line 384
    .local v10, oldAnims:[F
    if-eqz v9, :cond_9

    .line 385
    invoke-interface {v14}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v10

    .line 386
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 387
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {v14, v0, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 390
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 391
    new-instance v0, Landroid/util/AndroidException;

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #profileFile:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #profileFile:Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_b

    .line 395
    invoke-virtual {v5}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v0

    if-nez v0, :cond_b

    .line 396
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INSTRUMENTATION_ABORTED: System has crashed."

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    :cond_b
    if-eqz v10, :cond_5

    .line 401
    invoke-interface {v14, v10}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    goto :goto_1
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v1, 0x0

    .line 717
    .local v1, gdbPort:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, opt:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 718
    const-string v3, "--gdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 721
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/android/internal/telephony/Am;->showUsage()V

    .line 729
    :goto_1
    return-void

    .line 727
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/Am$MyActivityController;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/Am$MyActivityController;-><init>(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 728
    .local v0, controller:Lcom/android/internal/telephony/Am$MyActivityController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Am$MyActivityController;->run()V

    goto :goto_1
.end method

.method private runProfile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, profileFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 408
    .local v5, start:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, process:Ljava/lang/String;
    const/4 v2, 0x0

    .line 411
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, cmd:Ljava/lang/String;
    const-string/jumbo v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    const/4 v5, 0x1

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->nextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 416
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3c00

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 429
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6, v3, v5, v4, v2}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 430
    new-instance v6, Landroid/util/AndroidException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 422
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unable to open file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    return-void

    .line 425
    :cond_2
    const-string/jumbo v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 426
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private runStart()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 247
    .local v2, intent:Landroid/content/Intent;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const/4 v14, 0x0

    .line 252
    .local v14, result:Landroid/app/IActivityManager$WaitResult;
    iget-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;

    move-result-object v14

    .line 255
    iget v13, v14, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 260
    .local v13, res:I
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v12, v0

    .line 261
    .local v12, out:Ljava/io/PrintStream;
    :goto_1
    const/4 v11, 0x0

    .line 262
    .local v11, launched:Z
    packed-switch v13, :pswitch_data_0

    .line 313
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unknown error code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/Am;->mWaitOption:Z

    if-eqz v0, :cond_4

    if-eqz v11, :cond_4

    .line 318
    if-nez v14, :cond_0

    .line 319
    new-instance v14, Landroid/app/IActivityManager$WaitResult;

    .end local v14           #result:Landroid/app/IActivityManager$WaitResult;
    invoke-direct {v14}, Landroid/app/IActivityManager$WaitResult;-><init>()V

    .line 320
    .restart local v14       #result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 322
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    .end local v2           #intent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v14, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "timeout"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    iget-object v0, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    :cond_1
    iget-wide v0, v14, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 327
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThisTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v14, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    :cond_2
    iget-wide v0, v14, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 330
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TotalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v14, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Complete"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    :cond_4
    return-void

    .line 257
    .end local v11           #launched:Z
    .end local v12           #out:Ljava/io/PrintStream;
    .end local v13           #res:I
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/internal/telephony/Am;->mDebugOption:Z

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v13

    .restart local v13       #res:I
    goto/16 :goto_0

    .line 260
    :cond_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v12, v0

    goto/16 :goto_1

    .line 264
    .restart local v11       #launched:Z
    .restart local v12       #out:Ljava/io/PrintStream;
    :pswitch_0
    const/4 v11, 0x1

    .line 265
    goto/16 :goto_2

    .line 267
    :pswitch_1
    const/4 v11, 0x1

    .line 268
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 273
    :pswitch_2
    const/4 v11, 0x1

    .line 274
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 280
    :pswitch_3
    const/4 v11, 0x1

    .line 281
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 286
    :pswitch_4
    const/4 v11, 0x1

    .line 287
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    :pswitch_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unable to resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :pswitch_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 303
    :pswitch_7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 308
    :pswitch_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 322
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "ok"

    goto/16 :goto_3

    .line 262
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private runStartService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 238
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 240
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 241
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Not found; no service started."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method private sendBroadcast()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 338
    .local v2, intent:Landroid/content/Intent;
    new-instance v4, Lcom/android/internal/telephony/Am$IntentReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V

    .line 339
    .local v4, receiver:Lcom/android/internal/telephony/Am$IntentReceiver;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v9, 0x1

    move-object v3, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move v10, v5

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    .line 341
    invoke-virtual {v4}, Lcom/android/internal/telephony/Am$IntentReceiver;->waitForFinish()V

    .line 342
    return-void
.end method

.method private static showUsage()V
    .locals 2

    .prologue
    .line 881
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: am [subcommand] [options]\n\n    start an Activity: am start [-D] [-W] <INTENT>\n        -D: enable debugging\n        -W: wait for launch to complete\n\n    start a Service: am startservice <INTENT>\n\n    send a broadcast Intent: am broadcast <INTENT>\n\n    start an Instrumentation: am instrument [flags] <COMPONENT>\n        -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT)\n        -e <NAME> <VALUE>: set argument <NAME> to <VALUE>\n        -p <FILE>: write profiling data to <FILE>\n        -w: wait for instrumentation to finish before returning\n\n    start profiling: am profile <PROCESS> start <FILE>\n    stop profiling: am profile <PROCESS> stop\n\n    start monitoring: am monitor [--gdb <port>]\n        --gdb: start gdbserv on the given port at crash/ANR\n\n    <INTENT> specifications include these flags:\n        [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]\n        [-c <CATEGORY> [-c <CATEGORY>] ...]\n        [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]\n        [--esn <EXTRA_KEY> ...]\n        [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]\n        [-e|--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]\n        [-n <COMPONENT>] [-f <FLAGS>]\n        [--grant-read-uri-permission] [--grant-write-uri-permission]\n        [--debug-log-resolution]\n        [--activity-brought-to-front] [--activity-clear-top]\n        [--activity-clear-when-task-reset] [--activity-exclude-from-recents]\n        [--activity-launched-from-history] [--activity-multiple-task]\n        [--activity-no-animation] [--activity-no-history]\n        [--activity-no-user-action] [--activity-previous-is-top]\n        [--activity-reorder-to-front] [--activity-reset-task-if-needed]\n        [--activity-single-top]\n        [--receiver-registered-only] [--receiver-replace-pending]\n        [<URI>]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 924
    return-void
.end method
