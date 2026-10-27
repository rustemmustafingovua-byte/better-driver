.class public abstract Lj6/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[Lb0/l1;

.field public static final c:[Ljava/lang/annotation/Annotation;


# instance fields
.field public final a:Lb6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lb0/l1;

    sput-object v1, Lj6/x;->b:[Lb0/l1;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Lj6/x;->c:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public constructor <init>(Lb6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/x;->a:Lb6/d;

    return-void
.end method


# virtual methods
.method public final a(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    iget-object v3, p0, Lj6/x;->a:Lb6/d;

    invoke-virtual {v3, v2}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2}, Lj6/x;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final b([Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 5

    array-length v0, p1

    sget-object v1, Lj6/o;->m:Lj6/o;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    iget-object v4, p0, Lj6/x;->a:Lb6/d;

    invoke-virtual {v4, v3}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3}, Lj6/x;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final c(Lj6/s;[Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Lj6/s;->e(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    iget-object v4, p0, Lj6/x;->a:Lb6/d;

    invoke-virtual {v4, v3}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    instance-of v8, v7, Ljava/lang/annotation/Target;

    if-nez v8, :cond_1

    instance-of v8, v7, Ljava/lang/annotation/Retention;

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v7}, Lj6/s;->e(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1, v7}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    invoke-virtual {v4, v7}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, p1, v7}, Lj6/x;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 4

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lu6/h;->j(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    instance-of v3, v2, Ljava/lang/annotation/Target;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/annotation/Retention;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lj6/x;->a:Lb6/d;

    invoke-virtual {v3, v2}, Lb6/d;->s0(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lj6/s;->e(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lj6/x;->d(Lj6/s;Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lj6/s;->a(Ljava/lang/annotation/Annotation;)Lj6/s;

    move-result-object p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method
