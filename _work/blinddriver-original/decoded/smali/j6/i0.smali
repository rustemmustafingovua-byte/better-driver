.class public final Lj6/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[Lb6/i0;


# instance fields
.field public final a:Lj6/n;

.field public final b:Z

.field public final c:Lr5/j;

.field public d:[Lb6/i0;

.field public e:[Lb6/i0;

.field public f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lb6/i0;

    sput-object v0, Lj6/i0;->g:[Lb6/i0;

    return-void
.end method

.method public constructor <init>(Lj6/n;Lr5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/i0;->a:Lj6/n;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lj6/i0;->b:Z

    if-nez p2, :cond_1

    sget-object p2, Lr5/j;->l:Lr5/j;

    :cond_1
    iput-object p2, p0, Lj6/i0;->c:Lr5/j;

    return-void
.end method


# virtual methods
.method public final a(Ld6/m;)Z
    .locals 4

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    iget-object v0, p0, Lj6/i0;->d:[Lb6/i0;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lj6/i0;->e:[Lb6/i0;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    iget-object v3, p0, Lj6/i0;->d:[Lb6/i0;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v3, v2}, Lj6/n;->t(I)Lj6/m;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb6/d;->u(Lj6/h;)Lr5/b;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ld6/m;)V
    .locals 6

    iget-object v0, p0, Lj6/i0;->d:[Lb6/i0;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v0}, Lj6/n;->u()I

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lj6/i0;->g:[Lb6/i0;

    iput-object p1, p0, Lj6/i0;->e:[Lb6/i0;

    iput-object p1, p0, Lj6/i0;->d:[Lb6/i0;

    return-void

    :cond_1
    new-array v2, v1, [Lb6/i0;

    iput-object v2, p0, Lj6/i0;->e:[Lb6/i0;

    new-array v2, v1, [Lb6/i0;

    iput-object v2, p0, Lj6/i0;->d:[Lb6/i0;

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lj6/n;->t(I)Lj6/m;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb6/d;->t(Lj6/h;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lj6/i0;->d:[Lb6/i0;

    invoke-static {v4}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object v4

    aput-object v4, v5, v2

    :cond_2
    invoke-virtual {p1, v3}, Lb6/d;->z(Lj6/a;)Lb6/i0;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lb6/i0;->d()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lj6/i0;->e:[Lb6/i0;

    aput-object v3, v4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj6/i0;->c:Lr5/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/i0;->a:Lj6/n;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
