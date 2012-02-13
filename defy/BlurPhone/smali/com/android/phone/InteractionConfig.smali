.class public Lcom/android/phone/InteractionConfig;
.super Ljava/lang/Object;
.source "InteractionConfig.java"


# static fields
.field public static IS_MOVE_RECENT_CALL_TO_MAIN_MENU:Z

.field public static IS_MOVE_SPEED_DIAL_TO_MAIN_MENU:Z

.field public static IS_ONLY_SHOW_TWELVE_KEY_DIALER:Z

.field public static IS_PHYSICAL_QWERTY_MODE2:Z

.field public static IS_REMOVE_FREQUENT:Z

.field public static IS_SHOW_DIALPAD_BUTTON:Z

.field public static IS_SHOW_HINT_ENTER_EMERGENCY_HERE:Z

.field public static IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z

.field public static IS_SHOW_MENU_SWITCH_CALLS:Z

.field private static m_init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_MOVE_SPEED_DIAL_TO_MAIN_MENU:Z

    .line 31
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_MOVE_RECENT_CALL_TO_MAIN_MENU:Z

    .line 33
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_REMOVE_FREQUENT:Z

    .line 35
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    .line 37
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_ONLY_SHOW_TWELVE_KEY_DIALER:Z

    .line 39
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    .line 41
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_HINT_ENTER_EMERGENCY_HERE:Z

    .line 43
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z

    .line 45
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    .line 48
    sput-boolean v0, Lcom/android/phone/InteractionConfig;->m_init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->m_init:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_MOVE_SPEED_DIAL_TO_MAIN_MENU:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 60
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_MOVE_RECENT_CALL_TO_MAIN_MENU:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 64
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_REMOVE_FREQUENT:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 68
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 72
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_ONLY_SHOW_TWELVE_KEY_DIALER:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 76
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 80
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_HINT_ENTER_EMERGENCY_HERE:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 84
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 88
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 92
    :goto_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InteractionConfig;->m_init:Z

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_9

    .line 85
    :catch_1
    move-exception v0

    goto :goto_8

    .line 81
    :catch_2
    move-exception v0

    goto :goto_7

    .line 77
    :catch_3
    move-exception v0

    goto :goto_6

    .line 73
    :catch_4
    move-exception v0

    goto :goto_5

    .line 69
    :catch_5
    move-exception v0

    goto :goto_4

    .line 65
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 61
    :catch_7
    move-exception v0

    goto/16 :goto_2

    .line 57
    :catch_8
    move-exception v0

    goto/16 :goto_1
.end method
