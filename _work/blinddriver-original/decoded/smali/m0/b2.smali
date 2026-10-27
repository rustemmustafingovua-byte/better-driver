.class public abstract Lm0/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lm0/a2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lia/n;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lia/n;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lm0/b2;->a:Lr0/a0;

    const-wide v0, 0xff4286f4L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v0

    new-instance v2, Lm0/a2;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Lm0/a2;-><init>(JJ)V

    sput-object v2, Lm0/b2;->b:Lm0/a2;

    return-void
.end method
