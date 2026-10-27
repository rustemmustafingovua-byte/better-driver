.class public final Lla/x;
.super Lla/a0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lbb/j;


# direct methods
.method public constructor <init>(Lbb/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/x;->b:Lbb/j;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lla/x;->b:Lbb/j;

    invoke-virtual {p0}, Lbb/j;->a()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()Lla/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Lbb/o;)V
    .locals 0

    iget-object p0, p0, Lla/x;->b:Lbb/j;

    invoke-virtual {p1, p0}, Lbb/o;->N(Lbb/j;)Lbb/h;

    return-void
.end method
