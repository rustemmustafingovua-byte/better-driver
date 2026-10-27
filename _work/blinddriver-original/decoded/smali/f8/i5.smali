.class public final Lf8/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/o4;


# static fields
.field public static final m:Lf8/i5;


# instance fields
.field public final l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf8/i5;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lf8/i5;-><init>(Ljava/util/Map;)V

    sput-object v0, Lf8/i5;->m:Lf8/i5;

    new-instance v0, Lf8/h5;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/i5;->l:Ljava/util/Map;

    return-void
.end method

.method public static b()Lf8/f5;
    .locals 2

    new-instance v0, Lf8/f5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, v0, Lf8/f5;->l:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, v0, Lf8/f5;->m:I

    const/4 v1, 0x0

    iput-object v1, v0, Lf8/f5;->n:Lb0/l1;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf8/i5;

    if-eqz v1, :cond_1

    check-cast p1, Lf8/i5;

    iget-object p1, p1, Lf8/i5;->l:Ljava/util/Map;

    iget-object p0, p0, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lf8/n4;
    .locals 1

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf8/f5;->x(Lf8/i5;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final p()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lf8/c5;->a:Ljava/util/logging/Logger;

    sget-object v0, Lf8/b5;->b:Lf8/b5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lad/a2;

    invoke-direct {v1, v0}, Lad/a2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lf8/b5;->e(Lf8/i5;Lad/a2;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
