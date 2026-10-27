.class public abstract Lp/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm2/w;

    const-string v1, "MagnifierPositionInRoot"

    invoke-direct {v0, v1}, Lm2/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp/i1;->a:Lm2/w;

    return-void
.end method

.method public static a(Li9/c;Li9/c;)Lf1/r;
    .locals 2

    new-instance v0, Lp/f1;

    sget-object v1, Lp/v1;->a:Lp/v1;

    invoke-direct {v0, p0, p1, v1}, Lp/f1;-><init>(Li9/c;Li9/c;Lp/v1;)V

    return-object v0
.end method
