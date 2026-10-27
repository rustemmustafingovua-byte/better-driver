.class public final Lj1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/a;


# static fields
.field public static final l:Lj1/k;

.field public static final m:Lb3/m;

.field public static final n:Lb3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj1/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj1/k;->l:Lj1/k;

    sget-object v0, Lb3/m;->l:Lb3/m;

    sput-object v0, Lj1/k;->m:Lb3/m;

    new-instance v0, Lb3/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lb3/d;-><init>(FF)V

    sput-object v0, Lj1/k;->n:Lb3/d;

    return-void
.end method


# virtual methods
.method public final a()Lb3/c;
    .locals 0

    sget-object p0, Lj1/k;->n:Lb3/d;

    return-object p0
.end method

.method public final d()J
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide v0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    sget-object p0, Lj1/k;->m:Lb3/m;

    return-object p0
.end method
