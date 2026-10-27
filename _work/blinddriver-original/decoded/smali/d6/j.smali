.class public final Ld6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:[Le6/p;

.field public static final r:[Le6/i;

.field public static final s:[Lb6/a;

.field public static final t:[Le6/d0;

.field public static final u:[Le6/q;


# instance fields
.field public final l:[Le6/p;

.field public final m:[Le6/q;

.field public final n:[Le6/i;

.field public final o:[Lb6/a;

.field public final p:[Le6/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Le6/p;

    sput-object v1, Ld6/j;->q:[Le6/p;

    new-array v1, v0, [Le6/i;

    sput-object v1, Ld6/j;->r:[Le6/i;

    new-array v1, v0, [Lb6/a;

    sput-object v1, Ld6/j;->s:[Lb6/a;

    new-array v1, v0, [Le6/d0;

    sput-object v1, Ld6/j;->t:[Le6/d0;

    new-instance v1, Lg6/l1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Le6/q;

    aput-object v1, v2, v0

    sput-object v2, Ld6/j;->u:[Le6/q;

    return-void
.end method

.method public constructor <init>([Le6/p;[Le6/q;[Le6/i;[Lb6/a;[Le6/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ld6/j;->q:[Le6/p;

    :cond_0
    iput-object p1, p0, Ld6/j;->l:[Le6/p;

    if-nez p2, :cond_1

    sget-object p2, Ld6/j;->u:[Le6/q;

    :cond_1
    iput-object p2, p0, Ld6/j;->m:[Le6/q;

    if-nez p3, :cond_2

    sget-object p3, Ld6/j;->r:[Le6/i;

    :cond_2
    iput-object p3, p0, Ld6/j;->n:[Le6/i;

    if-nez p4, :cond_3

    sget-object p4, Ld6/j;->s:[Lb6/a;

    :cond_3
    iput-object p4, p0, Ld6/j;->o:[Lb6/a;

    if-nez p5, :cond_4

    sget-object p5, Ld6/j;->t:[Le6/d0;

    :cond_4
    iput-object p5, p0, Ld6/j;->p:[Le6/d0;

    return-void
.end method


# virtual methods
.method public final a()Lu6/d;
    .locals 1

    new-instance v0, Lu6/d;

    iget-object p0, p0, Ld6/j;->n:[Le6/i;

    invoke-direct {v0, p0}, Lu6/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Lu6/d;
    .locals 1

    new-instance v0, Lu6/d;

    iget-object p0, p0, Ld6/j;->l:[Le6/p;

    invoke-direct {v0, p0}, Lu6/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Ld6/j;->n:[Le6/i;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
