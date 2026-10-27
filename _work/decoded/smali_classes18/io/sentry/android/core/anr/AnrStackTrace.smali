.class public final Lio/sentry/android/core/anr/AnrStackTrace;
.super Ljava/lang/Object;
.source "AnrStackTrace.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/anr/AnrStackTrace;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_STACK_LENGTH:I = 0x3e8


# instance fields
.field public final stack:[Ljava/lang/StackTraceElement;

.field public final timestampMs:J


# direct methods
.method public constructor <init>(J[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "timestampMs"    # J
    .param p3, "stack"    # [Ljava/lang/StackTraceElement;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    .line 22
    iput-object p3, p0, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    .line 23
    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lio/sentry/android/core/anr/AnrStackTrace;
    .locals 14
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 49
    .local v1, "version":S
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 50
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 51
    .local v2, "timestampMs":J
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 52
    .local v4, "stackLength":I
    if-ltz v4, :cond_3

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    new-array v5, v4, [Ljava/lang/StackTraceElement;

    .line 57
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 58
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "className":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    .line 62
    .local v9, "isFileNameNull":Z
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "fileNameStr":Ljava/lang/String;
    if-eqz v9, :cond_1

    move-object v11, v0

    goto :goto_1

    :cond_1
    move-object v11, v10

    .line 64
    .local v11, "fileName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 65
    .local v12, "lineNumber":I
    new-instance v13, Ljava/lang/StackTraceElement;

    invoke-direct {v13, v7, v8, v11, v12}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .local v13, "element":Ljava/lang/StackTraceElement;
    aput-object v13, v5, v6

    .line 57
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "isFileNameNull":Z
    .end local v10    # "fileNameStr":Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "lineNumber":I
    .end local v13    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Lio/sentry/android/core/anr/AnrStackTrace;

    invoke-direct {v6, v2, v3, v5}, Lio/sentry/android/core/anr/AnrStackTrace;-><init>(J[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 53
    .end local v5    # "stack":[Ljava/lang/StackTraceElement;
    :cond_3
    :goto_2
    return-object v0

    .line 73
    .end local v2    # "timestampMs":J
    .end local v4    # "stackLength":I
    :cond_4
    return-object v0

    .line 75
    .end local v1    # "version":S
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/EOFException;
    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/anr/AnrStackTrace;)I
    .locals 4
    .param p1, "o"    # Lio/sentry/android/core/anr/AnrStackTrace;

    .line 27
    iget-wide v0, p0, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    iget-wide v2, p1, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lio/sentry/android/core/anr/AnrStackTrace;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/anr/AnrStackTrace;->compareTo(Lio/sentry/android/core/anr/AnrStackTrace;)I

    move-result p1

    return p1
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 8
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    iget-wide v1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->timestampMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 33
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    iget-object v1, p0, Lio/sentry/android/core/anr/AnrStackTrace;->stack:[Ljava/lang/StackTraceElement;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 35
    .local v5, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/sentry/util/StringUtils;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/sentry/util/StringUtils;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "fileName":Ljava/lang/String;
    if-nez v6, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 40
    if-nez v6, :cond_1

    const-string v7, ""

    goto :goto_2

    :cond_1
    move-object v7, v6

    :goto_2
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 34
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    .end local v6    # "fileName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method
