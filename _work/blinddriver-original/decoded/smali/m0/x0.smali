.class public abstract Lm0/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/m;

.field public static final b:Ln/o1;

.field public static final c:J

.field public static final d:Ln/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ln/m;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Ln/m;-><init>(FF)V

    sput-object v0, Lm0/x0;->a:Ln/m;

    new-instance v0, Lgd/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Lm0/x0;->b:Ln/o1;

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    or-long/2addr v0, v2

    sput-wide v0, Lm0/x0;->c:J

    new-instance v2, Ln/r0;

    new-instance v3, Ll1/b;

    invoke-direct {v3, v0, v1}, Ll1/b;-><init>(J)V

    const/4 v0, 0x3

    invoke-direct {v2, v0, v3}, Ln/r0;-><init>(ILjava/lang/Object;)V

    sput-object v2, Lm0/x0;->d:Ln/r0;

    return-void
.end method
