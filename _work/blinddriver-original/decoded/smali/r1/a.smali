.class public final Lr1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm1/e;

.field public b:Lm1/a;

.field public c:J

.field public d:I

.field public final e:Lo1/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb3/m;->l:Lb3/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/a;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lr1/a;->d:I

    new-instance v0, Lo1/b;

    invoke-direct {v0}, Lo1/b;-><init>()V

    iput-object v0, p0, Lr1/a;->e:Lo1/b;

    return-void
.end method
