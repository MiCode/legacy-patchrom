.class public Landroid/view/WindowManager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "WindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final ALPHA_CHANGED:I = 0x80

.field public static final ANIMATION_CHANGED:I = 0x10

.field public static final BRIGHTNESS_OVERRIDE_FULL:F = 1.0f

.field public static final BRIGHTNESS_OVERRIDE_NONE:F = -1.0f

.field public static final BRIGHTNESS_OVERRIDE_OFF:F = 0.0f

.field public static final BUTTON_BRIGHTNESS_CHANGED:I = 0x1000

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_AMOUNT_CHANGED:I = 0x20

.field public static final FIRST_APPLICATION_WINDOW:I = 0x1

.field public static final FIRST_SUB_WINDOW:I = 0x3e8

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final FLAGS_CHANGED:I = 0x4

.field public static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x1

.field public static final FLAG_ALT_FOCUSABLE_IM:I = 0x20000

.field public static final FLAG_BLUR_BEHIND:I = 0x4

.field public static final FLAG_COMPATIBLE_WINDOW:I = 0x20000000

.field public static final FLAG_DIM_BEHIND:I = 0x2

.field public static final FLAG_DISMISS_KEYGUARD:I = 0x400000

.field public static final FLAG_DITHER:I = 0x1000

.field public static final FLAG_FORCE_NOT_FULLSCREEN:I = 0x800

.field public static final FLAG_FULLSCREEN:I = 0x400

.field public static final FLAG_IGNORE_CHEEK_PRESSES:I = 0x8000

.field public static final FLAG_KEEP_SCREEN_ON:I = 0x80

.field public static final FLAG_KEEP_SURFACE_WHILE_ANIMATING:I = 0x10000000

.field public static final FLAG_LAYOUT_INSET_DECOR:I = 0x10000

.field public static final FLAG_LAYOUT_IN_SCREEN:I = 0x100

.field public static final FLAG_LAYOUT_NO_LIMITS:I = 0x200

.field public static final FLAG_NOT_FOCUSABLE:I = 0x8

.field public static final FLAG_NOT_TOUCHABLE:I = 0x10

.field public static final FLAG_NOT_TOUCH_MODAL:I = 0x20

.field public static final FLAG_SCALED:I = 0x4000

.field public static final FLAG_SECURE:I = 0x2000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x100000

.field public static final FLAG_SHOW_WHEN_LOCKED:I = 0x80000

.field public static final FLAG_SPLIT_TOUCH:I = 0x800000

.field public static final FLAG_SYSTEM_ERROR:I = 0x40000000

.field public static final FLAG_TOUCHABLE_WHEN_WAKING:I = 0x40

.field public static final FLAG_TURN_SCREEN_ON:I = 0x200000

.field public static final FLAG_WATCH_OUTSIDE_TOUCH:I = 0x40000

.field public static final FORMAT_CHANGED:I = 0x8

.field public static final LAST_APPLICATION_WINDOW:I = 0x63

.field public static final LAST_SUB_WINDOW:I = 0x7cf

.field public static final LAST_SYSTEM_WINDOW:I = 0xbb7

.field public static final LAYOUT_CHANGED:I = 0x1

.field public static final MEMORY_TYPE_CHANGED:I = 0x100

.field public static final MEMORY_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMORY_TYPE_NORMAL:I = 0x0

.field public static final MEMORY_TYPE_PUSH_BUFFERS:I = 0x3

.field public static final SCREEN_BRIGHTNESS_CHANGED:I = 0x800

.field public static final SCREEN_ORIENTATION_CHANGED:I = 0x400

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_IS_FORWARD_NAVIGATION:I = 0x100

.field public static final SOFT_INPUT_MASK_ADJUST:I = 0xf0

.field public static final SOFT_INPUT_MASK_STATE:I = 0xf

.field public static final SOFT_INPUT_MODE_CHANGED:I = 0x200

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNCHANGED:I = 0x1

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final TITLE_CHANGED:I = 0x40

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_APPLICATION_ATTACHED_DIALOG:I = 0x3eb

.field public static final TYPE_APPLICATION_MEDIA:I = 0x3e9

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I = 0x3ec

.field public static final TYPE_APPLICATION_PANEL:I = 0x3e8

.field public static final TYPE_APPLICATION_STARTING:I = 0x3

.field public static final TYPE_APPLICATION_SUB_PANEL:I = 0x3ea

.field public static final TYPE_BASE_APPLICATION:I = 0x1

.field public static final TYPE_CHANGED:I = 0x2

.field public static final TYPE_INPUT_METHOD:I = 0x7db

.field public static final TYPE_INPUT_METHOD_DIALOG:I = 0x7dc

.field public static final TYPE_KEYGUARD:I = 0x7d4

.field public static final TYPE_KEYGUARD_DIALOG:I = 0x7d9

.field public static final TYPE_PHONE:I = 0x7d2

.field public static final TYPE_PRIORITY_PHONE:I = 0x7d7

.field public static final TYPE_SEARCH_BAR:I = 0x7d1

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df

.field public static final TYPE_STATUS_BAR:I = 0x7d0

.field public static final TYPE_STATUS_BAR_PANEL:I = 0x7de

.field public static final TYPE_SYSTEM_ALERT:I = 0x7d3

.field public static final TYPE_SYSTEM_DIALOG:I = 0x7d8

.field public static final TYPE_SYSTEM_ERROR:I = 0x7da

.field public static final TYPE_SYSTEM_OVERLAY:I = 0x7d6

.field public static final TYPE_TOAST:I = 0x7d5

.field public static final TYPE_WALLPAPER:I = 0x7dd


# instance fields
.field public alpha:F

.field public buttonBrightness:F

.field public dimAmount:F

.field public flags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "FLAG_BLUR_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "FLAG_DIM_BEHIND"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "FLAG_NOT_FOCUSABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "FLAG_NOT_TOUCHABLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "FLAG_NOT_TOUCH_MODAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x100
                mask = 0x100
                name = "FLAG_LAYOUT_IN_SCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FLAG_DITHER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x200000
                name = "FLAG_TURN_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80
                mask = 0x80
                name = "FLAG_KEEP_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x80000
                mask = 0x80000
                name = "FLAG_SHOW_WHEN_LOCKED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x400000
                name = "FLAG_DISMISS_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400
                mask = 0x400
                name = "FLAG_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800
                mask = 0x800
                name = "FLAG_FORCE_NOT_FULLSCREEN"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "FLAG_IGNORE_CHEEK_PRESSES"
            .end subannotation
        }
    .end annotation
.end field

.field public format:I

.field public gravity:I

.field public horizontalMargin:F

.field public horizontalWeight:F

.field private mCompatibilityParamsBackup:[I

.field private mTitle:Ljava/lang/CharSequence;

.field public memoryType:I

.field public packageName:Ljava/lang/String;

.field public screenBrightness:F

.field public screenOrientation:I

.field public softInputMode:I

.field public token:Landroid/os/IBinder;

.field public type:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "TYPE_BASE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TYPE_APPLICATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TYPE_APPLICATION_STARTING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e8
                to = "TYPE_APPLICATION_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3e9
                to = "TYPE_APPLICATION_MEDIA"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3ea
                to = "TYPE_APPLICATION_SUB_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3eb
                to = "TYPE_APPLICATION_ATTACHED_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d0
                to = "TYPE_STATUS_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d1
                to = "TYPE_SEARCH_BAR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d2
                to = "TYPE_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d3
                to = "TYPE_SYSTEM_ALERT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d4
                to = "TYPE_KEYGUARD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d5
                to = "TYPE_TOAST"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d6
                to = "TYPE_SYSTEM_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d7
                to = "TYPE_PRIORITY_PHONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7de
                to = "TYPE_STATUS_BAR_PANEL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d8
                to = "TYPE_SYSTEM_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7d9
                to = "TYPE_KEYGUARD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7da
                to = "TYPE_SYSTEM_ERROR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7db
                to = "TYPE_INPUT_METHOD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7dc
                to = "TYPE_INPUT_METHOD_DIALOG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7df
                to = "TYPE_SECURE_SYSTEM_OVERLAY"
            .end subannotation
        }
    .end annotation
.end field

.field public verticalMargin:F

.field public verticalWeight:F

.field public windowAnimations:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 951
    new-instance v0, Landroid/view/WindowManager$LayoutParams$1;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams$1;-><init>()V

    sput-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 870
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 871
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 872
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 873
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "_type"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 876
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 877
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 878
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 879
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .parameter "_type"
    .parameter "_flags"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 882
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 883
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 884
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 885
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 886
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 889
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 890
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 891
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 892
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 893
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v0, -0x4080

    const/4 v1, 0x0

    .line 896
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 897
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 898
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 899
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 900
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "xpos"
    .parameter "ypos"
    .parameter "_type"
    .parameter "_flags"
    .parameter "_format"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v0, -0x4080

    const/4 v1, 0x0

    .line 904
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 822
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 905
    iput p3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 906
    iput p4, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 907
    iput p5, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 908
    iput p6, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 909
    iput p7, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v0, -0x4080

    const/4 v1, 0x0

    .line 963
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 822
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 829
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 837
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 845
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 851
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 856
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1004
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 983
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 985
    return-void
.end method

.method public static mayUseInputMethod(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 656
    const v0, 0x20008

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 661
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 659
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20008 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method backup()V
    .locals 3

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1189
    .local v0, backup:[I
    if-nez v0, :cond_0

    .line 1191
    const/4 v1, 0x4

    new-array v0, v1, [I

    .end local v0           #backup:[I
    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1193
    .restart local v0       #backup:[I
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    aput v2, v0, v1

    .line 1194
    const/4 v1, 0x1

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    aput v2, v0, v1

    .line 1195
    const/4 v1, 0x2

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v2, v0, v1

    .line 1196
    const/4 v1, 0x3

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v2, v0, v1

    .line 1197
    return-void
.end method

.method public final copyFrom(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1009
    .local v0, changes:I
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    .line 1010
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1011
    or-int/lit8 v0, v0, 0x1

    .line 1013
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    .line 1014
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1015
    or-int/lit8 v0, v0, 0x1

    .line 1017
    :cond_1
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v1, v2, :cond_2

    .line 1018
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1019
    or-int/lit8 v0, v0, 0x1

    .line 1021
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v1, v2, :cond_3

    .line 1022
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1023
    or-int/lit8 v0, v0, 0x1

    .line 1025
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 1026
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 1027
    or-int/lit8 v0, v0, 0x1

    .line 1029
    :cond_4
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 1030
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 1031
    or-int/lit8 v0, v0, 0x1

    .line 1033
    :cond_5
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    .line 1034
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 1035
    or-int/lit8 v0, v0, 0x1

    .line 1037
    :cond_6
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 1038
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 1039
    or-int/lit8 v0, v0, 0x1

    .line 1041
    :cond_7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_8

    .line 1042
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1043
    or-int/lit8 v0, v0, 0x2

    .line 1045
    :cond_8
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    if-eq v1, v2, :cond_9

    .line 1046
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1047
    or-int/lit16 v0, v0, 0x100

    .line 1049
    :cond_9
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v2, :cond_a

    .line 1050
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1051
    or-int/lit8 v0, v0, 0x4

    .line 1053
    :cond_a
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v1, v2, :cond_b

    .line 1054
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1055
    or-int/lit16 v0, v0, 0x200

    .line 1057
    :cond_b
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_c

    .line 1058
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1059
    or-int/lit8 v0, v0, 0x1

    .line 1061
    :cond_c
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_d

    .line 1062
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 1063
    or-int/lit8 v0, v0, 0x1

    .line 1065
    :cond_d
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    .line 1066
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 1067
    or-int/lit8 v0, v0, 0x1

    .line 1069
    :cond_e
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    if-eq v1, v2, :cond_f

    .line 1070
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1071
    or-int/lit8 v0, v0, 0x8

    .line 1073
    :cond_f
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v2, :cond_10

    .line 1074
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1075
    or-int/lit8 v0, v0, 0x10

    .line 1077
    :cond_10
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_11

    .line 1080
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1082
    :cond_11
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 1085
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1087
    :cond_12
    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1088
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 1089
    or-int/lit8 v0, v0, 0x40

    .line 1091
    :cond_13
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_14

    .line 1092
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1093
    or-int/lit16 v0, v0, 0x80

    .line 1095
    :cond_14
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 1096
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1097
    or-int/lit8 v0, v0, 0x20

    .line 1099
    :cond_15
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_16

    .line 1100
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1101
    or-int/lit16 v0, v0, 0x800

    .line 1103
    :cond_16
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_17

    .line 1104
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 1105
    or-int/lit16 v0, v0, 0x1000

    .line 1108
    :cond_17
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_18

    .line 1109
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1110
    or-int/lit16 v0, v0, 0x400

    .line 1112
    :cond_18
    return v0
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "output"

    .prologue
    const-string v3, ""

    const-string v2, "Debug"

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Contents of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1118
    const-string v0, "Debug"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const-string v0, ""

    invoke-super {p0, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1120
    const-string v0, "Debug"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v0, "Debug"

    const-string v0, ""

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v0, "Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowManager.LayoutParams={title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v0, ""

    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method restore()V
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mCompatibilityParamsBackup:[I

    .line 1205
    .local v0, backup:[I
    if-eqz v0, :cond_0

    .line 1206
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1207
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1208
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1209
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1211
    :cond_0
    return-void
.end method

.method public scale(F)V
    .locals 2
    .parameter "scale"

    .prologue
    const/high16 v1, 0x3f00

    .line 1173
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1174
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1175
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 1176
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1178
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 1179
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1181
    :cond_1
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    const-string p1, ""

    .line 916
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    .line 917
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x1

    const-string/jumbo v5, "wrap"

    const-string v4, "fill"

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1129
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "WM.LayoutParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1132
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1133
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_5

    const-string v1, "fill"

    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1136
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1137
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_7

    const-string v1, "fill"

    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1138
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz v1, :cond_0

    .line 1140
    const-string v1, " sim=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v1, :cond_1

    .line 1144
    const-string v1, " gr=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :cond_1
    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v1, " fl=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const-string v1, " fmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1153
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v1, :cond_2

    .line 1154
    const-string v1, " wanim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    :cond_2
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v2, :cond_3

    .line 1158
    const-string v1, " or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1161
    :cond_3
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1162
    const-string v1, " compatible=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1135
    :cond_5
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v3, :cond_6

    const-string/jumbo v1, "wrap"

    move-object v1, v5

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 1137
    :cond_7
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_8

    const-string/jumbo v1, "wrap"

    move-object v1, v5

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "parcelableFlags"

    .prologue
    .line 928
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 938
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 939
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 942
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 943
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 944
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 945
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 946
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 948
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    return-void
.end method
