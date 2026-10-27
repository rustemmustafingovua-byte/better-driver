.class public final Lio/sentry/android/core/internal/threaddump/Lines;
.super Ljava/lang/Object;
.source "Lines.java"


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "+",
            "Lio/sentry/android/core/internal/threaddump/Line;",
            ">;"
        }
    .end annotation
.end field

.field private final mMax:I

.field private final mMin:I

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lio/sentry/android/core/internal/threaddump/Line;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lio/sentry/android/core/internal/threaddump/Line;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mList:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMin:I

    .line 67
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    .line 68
    return-void
.end method

.method public static readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;
    .locals 4
    .param p0, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/sentry/android/core/internal/threaddump/Line;>;"
    const/4 v1, 0x0

    .line 55
    .local v1, "lineno":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    new-instance v2, Lio/sentry/android/core/internal/threaddump/Line;

    invoke-direct {v2, v1, v3}, Lio/sentry/android/core/internal/threaddump/Line;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Lio/sentry/android/core/internal/threaddump/Lines;

    invoke-direct {v2, v0}, Lio/sentry/android/core/internal/threaddump/Lines;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public static readLines(Ljava/io/File;)Lio/sentry/android/core/internal/threaddump/Lines;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lio/sentry/android/core/internal/threaddump/Lines;->readLines(Ljava/io/BufferedReader;)Lio/sentry/android/core/internal/threaddump/Lines;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 45
    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 72
    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lio/sentry/android/core/internal/threaddump/Line;
    .locals 3

    .line 81
    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMin:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mMax:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/internal/threaddump/Line;

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public rewind()V
    .locals 1

    .line 90
    iget v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/sentry/android/core/internal/threaddump/Lines;->pos:I

    .line 91
    return-void
.end method
