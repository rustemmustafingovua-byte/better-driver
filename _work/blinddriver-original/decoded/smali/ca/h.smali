.class public abstract Lca/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Lmb/s2;

.field public static final c:Lmb/s2;

.field public static final d:Lmb/s2;

.field public static final e:Lmb/s2;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x64

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.semaphore.maxSpinCycles"

    invoke-static {v0, v1, v2}, Lz9/b;->l(IILjava/lang/String;)I

    move-result v0

    sput v0, Lca/h;->a:I

    new-instance v0, Lmb/s2;

    const-string v2, "PERMIT"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/h;->b:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v2, "TAKEN"

    invoke-direct {v0, v2, v3}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/h;->c:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v2, "BROKEN"

    invoke-direct {v0, v2, v3}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/h;->d:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v2, "CANCELLED"

    invoke-direct {v0, v2, v3}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/h;->e:Lmb/s2;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lz9/b;->l(IILjava/lang/String;)I

    move-result v0

    sput v0, Lca/h;->f:I

    return-void
.end method
