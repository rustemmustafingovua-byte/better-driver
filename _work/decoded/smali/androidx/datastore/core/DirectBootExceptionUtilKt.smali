.class public final Landroidx/datastore/core/DirectBootExceptionUtilKt;
.super Ljava/lang/Object;
.source "DirectBootExceptionUtil.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u001a\"\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0010\u0005\u001a\u00060\u0001j\u0002`\u0002H\u0007\u001a\u000c\u0010\u0006\u001a\u00020\u0007*\u00020\u0008H\u0000\u001a\u0008\u0010\n\u001a\u00020\u000bH\u0002\"\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "wrapExceptionIfDueToDirectBoot",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "parentDirPath",
        "",
        "exception",
        "isDeviceUnlocked",
        "",
        "",
        "TAG",
        "primaryUserId",
        "",
        "datastore-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectBootExceptionUtil"


# direct methods
.method public static final isDeviceUnlocked(Ljava/lang/Throwable;)Z
    .locals 5
    .param p0, "$this$isDeviceUnlocked"    # Ljava/lang/Throwable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    nop

    .line 86
    nop

    .line 87
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "systemPropertiesClass":Ljava/lang/Class;
    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "getMethod(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    nop

    .line 90
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    invoke-static {}, Landroidx/datastore/core/DirectBootExceptionUtilKt;->primaryUserId()I

    move-result v2

    .line 92
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.user."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ce_available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    const-string v4, "true"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    nop

    .line 93
    .local v3, "isCeAvailable":Z
    return v3

    .line 94
    .end local v0    # "systemPropertiesClass":Ljava/lang/Class;
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "userId":I
    .end local v3    # "isCeAvailable":Z
    :catchall_0
    move-exception v0

    .line 96
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 97
    const/4 v1, 0x0

    return v1
.end method

.method private static final primaryUserId()I
    .locals 4

    .line 106
    nop

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "obtain(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 111
    .end local v1    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception v1

    .line 112
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "DirectBootExceptionUtil"

    const-string v3, "Error when reading current user id. Selected default user id `0`."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0
.end method

.method public static final wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 3
    .param p0, "parentDirPath"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Exception;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Landroidx/datastore/core/DirectBootExceptionUtilKt;->isDeviceUnlocked(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-object p1

    .line 46
    :cond_0
    if-nez p0, :cond_1

    .line 48
    return-object p1

    .line 50
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "siblingTestFile.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, "siblingTestFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 55
    :cond_2
    nop

    .line 57
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    nop

    .line 68
    return-object p1

    .line 66
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroidx/datastore/core/DirectBootUsageException;

    invoke-direct {v2, p1}, Landroidx/datastore/core/DirectBootUsageException;-><init>(Ljava/lang/Exception;)V

    check-cast v2, Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 61
    .restart local v1    # "e":Ljava/io/IOException;
    return-object v2

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method
