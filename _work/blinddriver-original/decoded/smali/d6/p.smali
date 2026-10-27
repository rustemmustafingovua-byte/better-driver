.class public final Ld6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final o:[Lq6/m;

.field public static final p:[Lq6/g;


# instance fields
.field public final l:[Lq6/m;

.field public final m:[Lq6/m;

.field public final n:[Lq6/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lq6/m;

    sput-object v1, Ld6/p;->o:[Lq6/m;

    new-array v0, v0, [Lq6/g;

    sput-object v0, Ld6/p;->p:[Lq6/g;

    return-void
.end method

.method public constructor <init>([Lq6/m;[Lq6/m;[Lq6/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ld6/p;->o:[Lq6/m;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Ld6/p;->l:[Lq6/m;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Ld6/p;->m:[Lq6/m;

    if-nez p3, :cond_2

    sget-object p3, Ld6/p;->p:[Lq6/g;

    :cond_2
    iput-object p3, p0, Ld6/p;->n:[Lq6/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Ld6/p;->n:[Lq6/g;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lu6/d;
    .locals 1

    new-instance v0, Lu6/d;

    iget-object p0, p0, Ld6/p;->n:[Lq6/g;

    invoke-direct {v0, p0}, Lu6/d;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
