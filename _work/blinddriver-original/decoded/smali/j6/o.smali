.class public final Lj6/o;
.super Lj6/s;
.source "SourceFile"


# static fields
.field public static final m:Lj6/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj6/o;->m:Lj6/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/annotation/Annotation;)Lj6/s;
    .locals 1

    new-instance p0, Lj6/r;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj6/r;->m:Ljava/lang/Class;

    iput-object p1, p0, Lj6/r;->n:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public final b()Lb0/l1;
    .locals 2

    new-instance p0, Lb0/l1;

    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lb0/l1;-><init>(IZ)V

    return-object p0
.end method

.method public final c()Lu6/b;
    .locals 0

    sget-object p0, Lj6/s;->l:Lj6/q;

    return-object p0
.end method

.method public final e(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
