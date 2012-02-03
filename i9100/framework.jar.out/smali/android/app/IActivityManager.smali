.class public interface abstract Landroid/app/IActivityManager;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$1;,
        Landroid/app/IActivityManager$WaitResult;,
        Landroid/app/IActivityManager$ContentProviderHolder;
    }
.end annotation


# static fields
.field public static final ACTIVITY_DESTROYED_TRANSACTION:I = 0x3e

.field public static final ACTIVITY_IDLE_TRANSACTION:I = 0x12

.field public static final ACTIVITY_PAUSED_TRANSACTION:I = 0x13

.field public static final ACTIVITY_STOPPED_TRANSACTION:I = 0x14

.field public static final ATTACH_APPLICATION_TRANSACTION:I = 0x11

.field public static final BACKUP_AGENT_CREATED_TRANSACTION:I = 0x5b

.field public static final BIND_SERVICE_TRANSACTION:I = 0x24

.field public static final BROADCAST_INTENT_TRANSACTION:I = 0xe

.field public static final BROADCAST_STICKY_CANT_HAVE_PERMISSION:I = -0x1

.field public static final BROADCAST_SUCCESS:I = 0x0

.field public static final CANCEL_INTENT_SENDER_TRANSACTION:I = 0x40

.field public static final CHECK_PERMISSION_TRANSACTION:I = 0x35

.field public static final CHECK_URI_PERMISSION_TRANSACTION:I = 0x36

.field public static final CLEAR_APP_DATA_TRANSACTION:I = 0x4e

.field public static final CLOSE_SYSTEM_DIALOGS_TRANSACTION:I = 0x61

.field public static final CRASH_APPLICATION_TRANSACTION:I = 0x72

.field public static final ENTER_SAFE_MODE_TRANSACTION:I = 0x42

.field public static final FINISH_ACTIVITY_TRANSACTION:I = 0xb

.field public static final FINISH_HEAVY_WEIGHT_APP_TRANSACTION:I = 0x6d

.field public static final FINISH_INSTRUMENTATION_TRANSACTION:I = 0x2d

.field public static final FINISH_OTHER_INSTANCES_TRANSACTION:I = 0x27

.field public static final FINISH_RECEIVER_TRANSACTION:I = 0x10

.field public static final FINISH_SUB_ACTIVITY_TRANSACTION:I = 0x20

.field public static final FORCE_STOP_PACKAGE_TRANSACTION:I = 0x4f

.field public static final GET_ACTIVITY_CLASS_FOR_TOKEN_TRANSACTION:I = 0x31

.field public static final GET_CALLING_ACTIVITY_TRANSACTION:I = 0x16

.field public static final GET_CALLING_PACKAGE_TRANSACTION:I = 0x15

.field public static final GET_CONFIGURATION_TRANSACTION:I = 0x2e

.field public static final GET_CONTENT_PROVIDER_TRANSACTION:I = 0x1d

.field public static final GET_DEVICE_CONFIGURATION_TRANSACTION:I = 0x54

.field public static final GET_INTENT_SENDER_TRANSACTION:I = 0x3f

.field public static final GET_MEMORY_INFO_TRANSACTION:I = 0x4c

.field public static final GET_PACKAGE_FOR_INTENT_SENDER_TRANSACTION:I = 0x41

.field public static final GET_PACKAGE_FOR_TOKEN_TRANSACTION:I = 0x32

.field public static final GET_PROCESSES_IN_ERROR_STATE_TRANSACTION:I = 0x4d

.field public static final GET_PROCESS_LIMIT_TRANSACTION:I = 0x34

.field public static final GET_PROCESS_MEMORY_INFO_TRANSACTION:I = 0x62

.field public static final GET_PROVIDER_MIME_TYPE_TRANSACTION:I = 0x73

.field public static final GET_RECENT_TASKS_TRANSACTION:I = 0x3c

.field public static final GET_REQUESTED_ORIENTATION_TRANSACTION:I = 0x47

.field public static final GET_RUNNING_APP_PROCESSES_TRANSACTION:I = 0x53

.field public static final GET_RUNNING_EXTERNAL_APPLICATIONS_TRANSACTION:I = 0x6c

.field public static final GET_RUNNING_SERVICE_CONTROL_PANEL_TRANSACTION:I = 0x21

.field public static final GET_SERVICES_TRANSACTION:I = 0x51

.field public static final GET_TASKS_TRANSACTION:I = 0x17

.field public static final GET_TASK_FOR_ACTIVITY_TRANSACTION:I = 0x1b

.field public static final GOING_TO_SLEEP_TRANSACTION:I = 0x28

.field public static final GRANT_URI_PERMISSION_FROM_OWNER_TRANSACTION:I = 0x75

.field public static final GRANT_URI_PERMISSION_TRANSACTION:I = 0x37

.field public static final HANDLE_APPLICATION_CRASH_TRANSACTION:I = 0x2

.field public static final HANDLE_APPLICATION_STRICT_MODE_VIOLATION_TRANSACTION:I = 0x6e

.field public static final HANDLE_APPLICATION_WTF_TRANSACTION:I = 0x66

.field public static final INTENT_SENDER_ACTIVITY:I = 0x2

.field public static final INTENT_SENDER_ACTIVITY_RESULT:I = 0x3

.field public static final INTENT_SENDER_BROADCAST:I = 0x1

.field public static final INTENT_SENDER_SERVICE:I = 0x4

.field public static final IS_IMMERSIVE_TRANSACTION:I = 0x6f

.field public static final IS_TOP_ACTIVITY_IMMERSIVE_TRANSACTION:I = 0x71

.field public static final IS_USER_A_MONKEY_TRANSACTION:I = 0x68

.field public static final KILL_APPLICATION_PROCESS_TRANSACTION:I = 0x63

.field public static final KILL_APPLICATION_WITH_UID_TRANSACTION:I = 0x60

.field public static final KILL_BACKGROUND_PROCESSES_TRANSACTION:I = 0x67

.field public static final KILL_PIDS_TRANSACTION:I = 0x50

.field public static final MOVE_ACTIVITY_TASK_TO_BACK_TRANSACTION:I = 0x4b

.field public static final MOVE_TASK_BACKWARDS_TRANSACTION:I = 0x1a

.field public static final MOVE_TASK_TO_BACK_TRANSACTION:I = 0x19

.field public static final MOVE_TASK_TO_FRONT_TRANSACTION:I = 0x18

.field public static final NEW_URI_PERMISSION_OWNER_TRANSACTION:I = 0x74

.field public static final NOTE_WAKEUP_ALARM_TRANSACTION:I = 0x44

.field public static final OPEN_CONTENT_URI_TRANSACTION:I = 0x5

.field public static final OVERRIDE_PENDING_TRANSITION_TRANSACTION:I = 0x65

.field public static final PEEK_SERVICE_TRANSACTION:I = 0x55

.field public static final PROFILE_CONTROL_TRANSACTION:I = 0x56

.field public static final PUBLISH_CONTENT_PROVIDERS_TRANSACTION:I = 0x1e

.field public static final PUBLISH_SERVICE_TRANSACTION:I = 0x26

.field public static final REGISTER_ACTIVITY_WATCHER_TRANSACTION:I = 0x5d

.field public static final REGISTER_RECEIVER_TRANSACTION:I = 0xc

.field public static final REMOVE_CONTENT_PROVIDER_TRANSACTION:I = 0x45

.field public static final REPORT_THUMBNAIL_TRANSACTION:I = 0x1c

.field public static final RESUME_APP_SWITCHES_TRANSACTION:I = 0x59

.field public static final REVOKE_URI_PERMISSION_FROM_OWNER_TRANSACTION:I = 0x76

.field public static final REVOKE_URI_PERMISSION_TRANSACTION:I = 0x38

.field public static final SERVICE_DONE_EXECUTING_TRANSACTION:I = 0x3d

.field public static final SET_ACTIVITY_CONTROLLER_TRANSACTION:I = 0x39

.field public static final SET_ALWAYS_FINISH_TRANSACTION:I = 0x2b

.field public static final SET_DEBUG_APP_TRANSACTION:I = 0x2a

.field public static final SET_IMMERSIVE_TRANSACTION:I = 0x70

.field public static final SET_PROCESS_FOREGROUND_TRANSACTION:I = 0x49

.field public static final SET_PROCESS_LIMIT_TRANSACTION:I = 0x33

.field public static final SET_REQUESTED_ORIENTATION_TRANSACTION:I = 0x46

.field public static final SET_SERVICE_FOREGROUND_TRANSACTION:I = 0x4a

.field public static final SHOW_WAITING_FOR_DEBUGGER_TRANSACTION:I = 0x3a

.field public static final SHUTDOWN_TRANSACTION:I = 0x57

.field public static final SIGNAL_PERSISTENT_PROCESSES_TRANSACTION:I = 0x3b

.field public static final START_ACTIVITY_AND_WAIT_TRANSACTION:I = 0x69

.field public static final START_ACTIVITY_INTENT_SENDER_TRANSACTION:I = 0x64

.field public static final START_ACTIVITY_IN_PACKAGE_TRANSACTION:I = 0x5f

.field public static final START_ACTIVITY_TRANSACTION:I = 0x3

.field public static final START_ACTIVITY_WITH_CONFIG_TRANSACTION:I = 0x6b

.field public static final START_BACKUP_AGENT_TRANSACTION:I = 0x5a

.field public static final START_CANCELED:I = -0x6

.field public static final START_CLASS_NOT_FOUND:I = -0x2

.field public static final START_DELIVERED_TO_TOP:I = 0x3

.field public static final START_FORWARD_AND_REQUEST_CONFLICT:I = -0x3

.field public static final START_INSTRUMENTATION_TRANSACTION:I = 0x2c

.field public static final START_INTENT_NOT_RESOLVED:I = -0x1

.field public static final START_NEXT_MATCHING_ACTIVITY_TRANSACTION:I = 0x43

.field public static final START_NOT_ACTIVITY:I = -0x5

.field public static final START_PERMISSION_DENIED:I = -0x4

.field public static final START_RETURN_INTENT_TO_CALLER:I = 0x1

.field public static final START_RUNNING_TRANSACTION:I = 0x1

.field public static final START_SERVICE_TRANSACTION:I = 0x22

.field public static final START_SUCCESS:I = 0x0

.field public static final START_SWITCHES_CANCELED:I = 0x4

.field public static final START_TASK_TO_FRONT:I = 0x2

.field public static final STOP_APP_SWITCHES_TRANSACTION:I = 0x58

.field public static final STOP_SERVICE_TOKEN_TRANSACTION:I = 0x30

.field public static final STOP_SERVICE_TRANSACTION:I = 0x23

.field public static final UNBIND_BACKUP_AGENT_TRANSACTION:I = 0x5c

.field public static final UNBIND_FINISHED_TRANSACTION:I = 0x48

.field public static final UNBIND_SERVICE_TRANSACTION:I = 0x25

.field public static final UNBROADCAST_INTENT_TRANSACTION:I = 0xf

.field public static final UNHANDLED_BACK_TRANSACTION:I = 0x4

.field public static final UNREGISTER_ACTIVITY_WATCHER_TRANSACTION:I = 0x5e

.field public static final UNREGISTER_RECEIVER_TRANSACTION:I = 0xd

.field public static final UPDATE_CONFIGURATION_TRANSACTION:I = 0x2f

.field public static final WAKING_UP_TRANSACTION:I = 0x29

.field public static final WILL_ACTIVITY_BE_VISIBLE_TRANSACTION:I = 0x6a

.field public static final descriptor:Ljava/lang/String; = "android.app.IActivityManager"


# virtual methods
.method public abstract activityDestroyed(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract attachApplication(Landroid/app/IApplicationThread;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelIntentSender(Landroid/content/IIntentSender;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enterSafeMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishHeavyWeightApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceStopPackage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfiguration()Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProcessLimit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProcessesInErrorState()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRecentTasks(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRequestedOrientation(Landroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRunningExternalApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServices(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTaskForActivity(Landroid/os/IBinder;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract goingToSleep()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUserAMonkey()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract killApplicationProcess(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract killApplicationWithUid(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract killBackgroundProcesses(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract killPids([ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveTaskBackwards(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveTaskToBack(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract moveTaskToFront(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteWakeupAlarm(Landroid/content/IIntentSender;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerActivityWatcher(Landroid/app/IActivityWatcher;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resumeAppSwitches()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract serviceDoneExecuting(Landroid/os/IBinder;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setActivityController(Landroid/app/IActivityController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAlwaysFinish(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDebugApp(Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProcessForeground(Landroid/os/IBinder;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProcessLimit(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRequestedOrientation(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shutdown(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract signalPersistentProcesses(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAppSwitches()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract testIsSystemReady()Z
.end method

.method public abstract unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbindService(Landroid/app/IServiceConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unhandledBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract wakingUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract willActivityBeVisible(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
