.class final Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;
.super Ljava/lang/Object;
.source "ApplicationExitInfoEventProcessor.java"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnrHintEnricher"
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;


# direct methods
.method private constructor <init>(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 801
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
    .param p2, "x1"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$1;

    .line 801
    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;-><init>(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)V

    return-void
.end method

.method private applyAnrProfile(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;ZLio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 20
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/hints/Backfillable;
    .param p3, "isBackgroundAnr"    # Z
    .param p4, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 935
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "Could not delete ANR profile file"

    if-eqz p3, :cond_0

    .line 936
    return-void

    .line 939
    :cond_0
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "cacheDirPath":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 941
    return-void

    .line 943
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 945
    .local v5, "cacheDir":Ljava/io/File;
    instance-of v0, v2, Lio/sentry/hints/AbnormalExit;

    if-nez v0, :cond_2

    .line 946
    return-void

    .line 948
    :cond_2
    move-object v0, v2

    check-cast v0, Lio/sentry/hints/AbnormalExit;

    invoke-interface {v0}, Lio/sentry/hints/AbnormalExit;->timestamp()Ljava/lang/Long;

    move-result-object v6

    .line 950
    .local v6, "anrTimestampObj":Ljava/lang/Long;
    if-eqz v6, :cond_3

    .line 951
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .local v7, "anrTimestamp":J
    goto :goto_0

    .line 952
    .end local v7    # "anrTimestamp":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 953
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryEvent;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 958
    .restart local v7    # "anrTimestamp":J
    :goto_0
    const/4 v9, 0x0

    .line 960
    .local v9, "anrProfile":Lio/sentry/android/core/anr/AnrProfile;
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v5}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->getLastFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v11, v0

    .line 961
    .local v11, "lastFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v12, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v13, "Reading ANR profile"

    new-array v14, v10, [Ljava/lang/Object;

    invoke-interface {v0, v12, v13, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    new-instance v0, Lio/sentry/android/core/anr/AnrProfileManager;

    iget-object v12, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v12}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v12

    invoke-direct {v0, v12, v11}, Lio/sentry/android/core/anr/AnrProfileManager;-><init>(Lio/sentry/SentryOptions;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v0

    .line 964
    .local v12, "provider":Lio/sentry/android/core/anr/AnrProfileManager;
    :try_start_1
    invoke-virtual {v12}, Lio/sentry/android/core/anr/AnrProfileManager;->load()Lio/sentry/android/core/anr/AnrProfile;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .line 965
    :try_start_2
    invoke-virtual {v12}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 963
    .end local v12    # "provider":Lio/sentry/android/core/anr/AnrProfileManager;
    goto :goto_2

    .restart local v12    # "provider":Lio/sentry/android/core/anr/AnrProfileManager;
    :catchall_0
    move-exception v0

    move-object v13, v0

    :try_start_3
    invoke-virtual {v12}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "cacheDirPath":Ljava/lang/String;
    .end local v5    # "cacheDir":Ljava/io/File;
    .end local v6    # "anrTimestampObj":Ljava/lang/Long;
    .end local v7    # "anrTimestamp":J
    .end local v9    # "anrProfile":Lio/sentry/android/core/anr/AnrProfile;
    .end local p1    # "event":Lio/sentry/SentryEvent;
    .end local p2    # "hint":Lio/sentry/hints/Backfillable;
    .end local p3    # "isBackgroundAnr":Z
    .end local p4    # "optionsSource":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    :goto_1
    throw v13

    .line 967
    .end local v12    # "provider":Lio/sentry/android/core/anr/AnrProfileManager;
    .restart local v4    # "cacheDirPath":Ljava/lang/String;
    .restart local v5    # "cacheDir":Ljava/io/File;
    .restart local v6    # "anrTimestampObj":Ljava/lang/Long;
    .restart local v7    # "anrTimestamp":J
    .restart local v9    # "anrProfile":Lio/sentry/android/core/anr/AnrProfile;
    .restart local p1    # "event":Lio/sentry/SentryEvent;
    .restart local p2    # "hint":Lio/sentry/hints/Backfillable;
    .restart local p3    # "isBackgroundAnr":Z
    .restart local p4    # "optionsSource":Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;
    :cond_4
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v12, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v13, "No ANR profile file found"

    new-array v14, v10, [Ljava/lang/Object;

    invoke-interface {v0, v12, v13, v14}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 972
    .end local v11    # "lastFile":Ljava/io/File;
    :goto_2
    invoke-static {v5}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->deleteLastFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 973
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v11, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v0, v11, v3, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 969
    :catchall_2
    move-exception v0

    .line 970
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    iget-object v11, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v11}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v11

    invoke-virtual {v11}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v11

    sget-object v12, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v13, "Could not retrieve ANR profile"

    invoke-interface {v11, v12, v13, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 972
    .end local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v5}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->deleteLastFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 973
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v11, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v0, v11, v3, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    :cond_5
    :goto_3
    if-nez v9, :cond_6

    .line 978
    return-void

    .line 981
    :cond_6
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v11, "ANR profile found"

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v0, v3, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    iget-wide v11, v9, Lio/sentry/android/core/anr/AnrProfile;->startTimeMs:J

    cmp-long v0, v7, v11

    if-ltz v0, :cond_b

    iget-wide v11, v9, Lio/sentry/android/core/anr/AnrProfile;->endTimeMs:J

    cmp-long v0, v7, v11

    if-lez v0, :cond_7

    move-object/from16 v11, p4

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    goto/16 :goto_5

    .line 987
    :cond_7
    iget-object v0, v9, Lio/sentry/android/core/anr/AnrProfile;->stacks:Ljava/util/List;

    invoke-static {v0}, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->identify(Ljava/util/List;)Lio/sentry/android/core/anr/AggregatedStackTrace;

    move-result-object v0

    .line 988
    .local v0, "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    if-nez v0, :cond_8

    .line 989
    return-void

    .line 993
    :cond_8
    nop

    .line 994
    move-object/from16 v11, p4

    invoke-direct {v1, v7, v8, v9, v11}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->captureAnrProfile(JLio/sentry/android/core/anr/AnrProfile;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 995
    .local v3, "profilerId":Lio/sentry/protocol/SentryId;
    invoke-virtual {v0}, Lio/sentry/android/core/anr/AggregatedStackTrace;->getStack()[Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 997
    .local v12, "stack":[Ljava/lang/StackTraceElement;
    array-length v13, v12

    if-lez v13, :cond_a

    .line 998
    aget-object v13, v12, v10

    .line 999
    .local v13, "stackTraceElement":Ljava/lang/StackTraceElement;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1001
    .local v14, "message":Ljava/lang/String;
    new-instance v15, Lio/sentry/android/core/ApplicationNotResponding;

    invoke-direct {v15, v14}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v15, "exception":Lio/sentry/android/core/ApplicationNotResponding;
    invoke-virtual {v15, v12}, Lio/sentry/android/core/ApplicationNotResponding;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1004
    new-instance v16, Lio/sentry/protocol/Mechanism;

    invoke-direct/range {v16 .. v16}, Lio/sentry/protocol/Mechanism;-><init>()V

    move-object/from16 v17, v16

    .line 1005
    .local v17, "mechanism":Lio/sentry/protocol/Mechanism;
    const-string v10, "ANR"

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "mechanism":Lio/sentry/protocol/Mechanism;
    .local v0, "mechanism":Lio/sentry/protocol/Mechanism;
    .local v18, "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    invoke-virtual {v0, v10}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 1006
    new-instance v10, Lio/sentry/exception/ExceptionMechanismException;

    const/4 v2, 0x0

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "cacheDirPath":Ljava/lang/String;
    .local v17, "cacheDirPath":Ljava/lang/String;
    invoke-direct {v10, v0, v15, v2, v4}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 1009
    .local v10, "error":Lio/sentry/exception/ExceptionMechanismException;
    iget-object v2, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 1010
    invoke-static {v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$300(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/SentryExceptionFactory;

    move-result-object v2

    invoke-virtual {v2, v10}, Lio/sentry/SentryExceptionFactory;->getSentryExceptions(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    .line 1016
    .local v2, "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 1018
    if-eqz v3, :cond_9

    .line 1019
    move-object/from16 v16, v0

    .end local v0    # "mechanism":Lio/sentry/protocol/Mechanism;
    .local v16, "mechanism":Lio/sentry/protocol/Mechanism;
    invoke-virtual {v4}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    move-object/from16 v19, v2

    .end local v2    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    .local v19, "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    new-instance v2, Lio/sentry/ProfileContext;

    invoke-direct {v2, v3}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->setProfile(Lio/sentry/ProfileContext;)V

    goto :goto_4

    .line 1018
    .end local v16    # "mechanism":Lio/sentry/protocol/Mechanism;
    .end local v19    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    .restart local v0    # "mechanism":Lio/sentry/protocol/Mechanism;
    .restart local v2    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v19, v2

    .end local v0    # "mechanism":Lio/sentry/protocol/Mechanism;
    .end local v2    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    .restart local v16    # "mechanism":Lio/sentry/protocol/Mechanism;
    .restart local v19    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    goto :goto_4

    .line 997
    .end local v10    # "error":Lio/sentry/exception/ExceptionMechanismException;
    .end local v13    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v14    # "message":Ljava/lang/String;
    .end local v15    # "exception":Lio/sentry/android/core/ApplicationNotResponding;
    .end local v16    # "mechanism":Lio/sentry/protocol/Mechanism;
    .end local v17    # "cacheDirPath":Ljava/lang/String;
    .end local v18    # "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .end local v19    # "sentryException":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    .local v0, "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .restart local v4    # "cacheDirPath":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    .line 1022
    .end local v0    # "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .end local v4    # "cacheDirPath":Ljava/lang/String;
    .restart local v17    # "cacheDirPath":Ljava/lang/String;
    .restart local v18    # "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    :goto_4
    return-void

    .line 982
    .end local v3    # "profilerId":Lio/sentry/protocol/SentryId;
    .end local v12    # "stack":[Ljava/lang/StackTraceElement;
    .end local v17    # "cacheDirPath":Ljava/lang/String;
    .end local v18    # "culprit":Lio/sentry/android/core/anr/AggregatedStackTrace;
    .restart local v4    # "cacheDirPath":Ljava/lang/String;
    :cond_b
    move-object/from16 v11, p4

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    .line 983
    .end local v4    # "cacheDirPath":Ljava/lang/String;
    .restart local v17    # "cacheDirPath":Ljava/lang/String;
    :goto_5
    iget-object v0, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "ANR profile found, but doesn\'t match"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    return-void

    .line 972
    .end local v17    # "cacheDirPath":Ljava/lang/String;
    .restart local v4    # "cacheDirPath":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v11, p4

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    .end local v4    # "cacheDirPath":Ljava/lang/String;
    .restart local v17    # "cacheDirPath":Ljava/lang/String;
    invoke-static {v5}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->deleteLastFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 973
    iget-object v2, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v10, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v2, v10, v3, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    :cond_c
    throw v0

    .line 955
    .end local v7    # "anrTimestamp":J
    .end local v9    # "anrProfile":Lio/sentry/android/core/anr/AnrProfile;
    .end local v17    # "cacheDirPath":Ljava/lang/String;
    .restart local v4    # "cacheDirPath":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private captureAnrProfile(JLio/sentry/android/core/anr/AnrProfile;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Lio/sentry/protocol/SentryId;
    .locals 10
    .param p1, "anrTimestampMs"    # J
    .param p3, "anrProfile"    # Lio/sentry/android/core/anr/AnrProfile;
    .param p4, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 1029
    invoke-static {p3}, Lio/sentry/android/core/anr/StackTraceConverter;->convert(Lio/sentry/android/core/anr/AnrProfile;)Lio/sentry/protocol/profiling/SentryProfile;

    move-result-object v0

    .line 1030
    .local v0, "profile":Lio/sentry/protocol/profiling/SentryProfile;
    new-instance v1, Lio/sentry/ProfileChunk;

    new-instance v2, Lio/sentry/protocol/SentryId;

    invoke-direct {v2}, Lio/sentry/protocol/SentryId;-><init>()V

    new-instance v3, Lio/sentry/protocol/SentryId;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    long-to-double v6, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 1036
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 1038
    invoke-static {v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v8

    const/4 v4, 0x0

    const-string v7, "android"

    invoke-direct/range {v1 .. v8}, Lio/sentry/ProfileChunk;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V

    .line 1039
    .local v1, "chunk":Lio/sentry/ProfileChunk;
    invoke-virtual {v1, v0}, Lio/sentry/ProfileChunk;->setSentryProfile(Lio/sentry/protocol/profiling/SentryProfile;)V

    .line 1040
    invoke-direct {p0, p4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->createAnrProfileDebugMeta(Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Lio/sentry/protocol/DebugMeta;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/ProfileChunk;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    .line 1042
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/sentry/IScopes;->captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    move-result-object v2

    .line 1043
    .local v2, "profilerId":Lio/sentry/protocol/SentryId;
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    const/4 v3, 0x0

    return-object v3

    .line 1046
    :cond_0
    invoke-virtual {v1}, Lio/sentry/ProfileChunk;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    return-object v3
.end method

.method private createAnrProfileDebugMeta(Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Lio/sentry/protocol/DebugMeta;
    .locals 4
    .param p1, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 1087
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 1089
    invoke-static {v2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v2

    .line 1088
    const-string v3, "proguard-uuid.json"

    invoke-static {v0, v3, v1, v2, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$400(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1090
    .local v0, "proguardUuid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1093
    const/4 v1, 0x0

    return-object v1

    .line 1096
    :cond_0
    new-instance v1, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v1}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 1097
    .local v1, "debugMeta":Lio/sentry/protocol/DebugMeta;
    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$500(Ljava/lang/String;)Lio/sentry/protocol/DebugImage;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 1098
    return-object v1
.end method

.method private findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)",
            "Lio/sentry/protocol/SentryThread;"
        }
    .end annotation

    .line 882
    .local p1, "threads":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryThread;>;"
    if-eqz p1, :cond_1

    .line 883
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryThread;

    .line 884
    .local v1, "thread":Lio/sentry/protocol/SentryThread;
    invoke-virtual {v1}, Lio/sentry/protocol/SentryThread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    return-object v1

    .line 888
    .end local v1    # "thread":Lio/sentry/protocol/SentryThread;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 890
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasOnlySystemFrames(Lio/sentry/SentryEvent;)Z
    .locals 10
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 1051
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v0

    .line 1052
    .local v0, "exceptions":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryException;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1056
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryException;

    .line 1057
    .local v3, "exception":Lio/sentry/protocol/SentryException;
    invoke-virtual {v3}, Lio/sentry/protocol/SentryException;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v4

    .line 1058
    .local v4, "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    if-eqz v4, :cond_3

    .line 1059
    invoke-virtual {v4}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v5

    .line 1060
    .local v5, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1061
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/protocol/SentryStackFrame;

    .line 1062
    .local v7, "frame":Lio/sentry/protocol/SentryStackFrame;
    invoke-virtual {v7}, Lio/sentry/protocol/SentryStackFrame;->isInApp()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lio/sentry/protocol/SentryStackFrame;->isInApp()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1063
    return v1

    .line 1065
    :cond_1
    invoke-virtual {v7}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object v8

    .line 1066
    .local v8, "module":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v8}, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->isSystemFrame(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1067
    return v1

    .line 1069
    .end local v7    # "frame":Lio/sentry/protocol/SentryStackFrame;
    .end local v8    # "module":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1072
    .end local v3    # "exception":Lio/sentry/protocol/SentryException;
    .end local v4    # "stacktrace":Lio/sentry/protocol/SentryStackTrace;
    .end local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    :cond_3
    goto :goto_0

    .line 1073
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 1053
    :cond_5
    :goto_2
    return v1
.end method

.method private isBackgroundAnr(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "hint"    # Ljava/lang/Object;

    .line 810
    instance-of v0, p1, Lio/sentry/hints/AbnormalExit;

    if-eqz v0, :cond_0

    .line 811
    move-object v0, p1

    check-cast v0, Lio/sentry/hints/AbnormalExit;

    invoke-interface {v0}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "abnormalMechanism":Ljava/lang/String;
    const-string v1, "anr_background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 814
    .end local v0    # "abnormalMechanism":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setAnrExceptions(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Z)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/hints/Backfillable;
    .param p3, "isBackgroundAnr"    # Z

    .line 897
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    return-void

    .line 902
    :cond_0
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 903
    .local v0, "mechanism":Lio/sentry/protocol/Mechanism;
    invoke-interface {p2}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v1

    if-nez v1, :cond_1

    .line 905
    const-string v1, "HistoricalAppExitInfo"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_1
    const-string v1, "AppExitInfo"

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 910
    :goto_0
    const-string v1, "ANR"

    .line 911
    .local v1, "message":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 914
    :cond_2
    new-instance v2, Lio/sentry/android/core/ApplicationNotResponding;

    .line 915
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 917
    .local v2, "anr":Lio/sentry/android/core/ApplicationNotResponding;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;

    move-result-object v3

    .line 918
    .local v3, "mainThread":Lio/sentry/protocol/SentryThread;
    if-nez v3, :cond_3

    .line 921
    new-instance v4, Lio/sentry/protocol/SentryThread;

    invoke-direct {v4}, Lio/sentry/protocol/SentryThread;-><init>()V

    move-object v3, v4

    .line 922
    new-instance v4, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v4}, Lio/sentry/protocol/SentryStackTrace;-><init>()V

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 924
    :cond_3
    iget-object v4, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 925
    invoke-static {v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$300(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/SentryExceptionFactory;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v2}, Lio/sentry/SentryExceptionFactory;->getSentryExceptionsFromThread(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .line 924
    invoke-virtual {p1, v4}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 926
    return-void
.end method

.method private setAppForeground(Lio/sentry/SentryBaseEvent;Z)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryBaseEvent;
    .param p2, "inForeground"    # Z

    .line 867
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    .line 868
    .local v0, "app":Lio/sentry/protocol/App;
    if-nez v0, :cond_0

    .line 869
    new-instance v1, Lio/sentry/protocol/App;

    invoke-direct {v1}, Lio/sentry/protocol/App;-><init>()V

    move-object v0, v1

    .line 870
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 875
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/App;->getInForeground()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 876
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    .line 878
    :cond_1
    return-void
.end method

.method private setDefaultAnrFingerprint(Lio/sentry/SentryEvent;Z)V
    .locals 3
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "isBackgroundAnr"    # Z

    .line 849
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAnrFingerprinting()Z

    move-result v0

    const-string v1, "background-anr"

    const-string v2, "foreground-anr"

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->hasOnlySystemFrames(Lio/sentry/SentryEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    nop

    .line 858
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v0, "system-frames-only-anr"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    goto :goto_2

    .line 860
    :cond_2
    nop

    .line 861
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const-string v0, "{{ default }}"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 860
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 863
    :goto_2
    return-void
.end method


# virtual methods
.method public applyPostEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/hints/Backfillable;
    .param p3, "rawHint"    # Ljava/lang/Object;
    .param p4, "optionsSource"    # Lio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;

    .line 832
    invoke-direct {p0, p3}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result v0

    .line 834
    .local v0, "isBackgroundAnr":Z
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$200(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)Lio/sentry/android/core/SentryAndroidOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    invoke-direct {p0, p1, p2, v0, p4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->applyAnrProfile(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;ZLio/sentry/android/core/ApplicationExitInfoEventProcessor$OptionsSource;)V

    .line 838
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->setDefaultAnrFingerprint(Lio/sentry/SentryEvent;Z)V

    .line 841
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->setAppForeground(Lio/sentry/SentryBaseEvent;Z)V

    .line 842
    return-void
.end method

.method public applyPreEnrichment(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/hints/Backfillable;
    .param p3, "rawHint"    # Ljava/lang/Object;

    .line 820
    invoke-direct {p0, p3}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result v0

    .line 822
    .local v0, "isBackgroundAnr":Z
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->this$0:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    invoke-static {v1, p1}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->access$100(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;Lio/sentry/SentryBaseEvent;)V

    .line 823
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->setAnrExceptions(Lio/sentry/SentryEvent;Lio/sentry/hints/Backfillable;Z)V

    .line 824
    return-void
.end method

.method public supports(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 805
    instance-of v0, p1, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    return v0
.end method
