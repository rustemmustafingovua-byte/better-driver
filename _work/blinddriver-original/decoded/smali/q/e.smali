.class public abstract Lq/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:Lf1/i;

.field public static final g:I

.field public static final h:F

.field public static final i:F

.field public static final j:F

.field public static final k:F

.field public static final l:F

.field public static final m:J

.field public static final n:Lt2/k;

.field public static final o:J

.field public static final p:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x70

    int-to-float v0, v0

    sput v0, Lq/e;->a:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Lq/e;->b:F

    const/16 v0, 0x30

    int-to-float v0, v0

    sput v0, Lq/e;->c:F

    const/4 v0, 0x3

    int-to-float v0, v0

    sput v0, Lq/e;->d:F

    const/4 v0, 0x4

    int-to-float v0, v0

    sput v0, Lq/e;->e:F

    sget-object v0, Lf1/c;->v:Lf1/i;

    sput-object v0, Lq/e;->f:Lf1/i;

    const/4 v0, 0x5

    sput v0, Lq/e;->g:I

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Lq/e;->h:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lq/e;->i:F

    const/16 v1, 0x18

    int-to-float v1, v1

    sput v1, Lq/e;->j:F

    const/4 v1, 0x1

    int-to-float v1, v1

    sput v1, Lq/e;->k:F

    sput v0, Lq/e;->l:F

    const/16 v0, 0xe

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v0

    sput-wide v0, Lq/e;->m:J

    sget-object v0, Lt2/k;->o:Lt2/k;

    sput-object v0, Lq/e;->n:Lt2/k;

    const/16 v0, 0x14

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v0

    sput-wide v0, Lq/e;->o:J

    const v0, 0x3dcccccd    # 0.1f

    const-wide v1, 0x100000000L

    invoke-static {v0, v1, v2}, La/a;->u(FJ)J

    move-result-wide v0

    sput-wide v0, Lq/e;->p:J

    return-void
.end method
