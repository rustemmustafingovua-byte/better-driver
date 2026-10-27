.class public abstract Lsc/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsc/i;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lsc/i;-><init>(I)V

    invoke-static {v0}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object v0

    sput-object v0, Lsc/x0;->a:Lt8/o;

    return-void
.end method

.method public static a()Ljava/time/ZoneId;
    .locals 1

    sget-object v0, Lsc/x0;->a:Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    return-object v0
.end method
