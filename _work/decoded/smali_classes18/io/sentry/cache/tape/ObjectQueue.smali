.class public abstract Lio/sentry/cache/tape/ObjectQueue;
.super Ljava/lang/Object;
.source "ObjectQueue.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/cache/tape/ObjectQueue$Converter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;
    .locals 1
    .param p0, "qf"    # Lio/sentry/cache/tape/QueueFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/cache/tape/QueueFile;",
            "Lio/sentry/cache/tape/ObjectQueue$Converter<",
            "TT;>;)",
            "Lio/sentry/cache/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation

    .line 40
    .local p1, "converter":Lio/sentry/cache/tape/ObjectQueue$Converter;, "Lio/sentry/cache/tape/ObjectQueue$Converter<TT;>;"
    new-instance v0, Lio/sentry/cache/tape/FileObjectQueue;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/tape/FileObjectQueue;-><init>(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)V

    return-object v0
.end method

.method public static createEmpty()Lio/sentry/cache/tape/ObjectQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/sentry/cache/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lio/sentry/cache/tape/EmptyObjectQueue;

    invoke-direct {v0}, Lio/sentry/cache/tape/EmptyObjectQueue;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    invoke-virtual {p0}, Lio/sentry/cache/tape/ObjectQueue;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/cache/tape/ObjectQueue;->peek(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    invoke-virtual {p0}, Lio/sentry/cache/tape/ObjectQueue;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/cache/tape/ObjectQueue;->remove(I)V

    .line 104
    return-void
.end method

.method public abstract file()Lio/sentry/cache/tape/QueueFile;
.end method

.method public isEmpty()Z
    .locals 1

    .line 56
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    invoke-virtual {p0}, Lio/sentry/cache/tape/ObjectQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract peek()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public peek(I)Ljava/util/List;
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    invoke-virtual {p0}, Lio/sentry/cache/tape/ObjectQueue;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lio/sentry/cache/tape/ObjectQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/cache/tape/ObjectQueue;->remove(I)V

    .line 96
    return-void
.end method

.method public abstract remove(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public sync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/sentry/cache/tape/ObjectQueue;, "Lio/sentry/cache/tape/ObjectQueue<TT;>;"
    return-void
.end method
