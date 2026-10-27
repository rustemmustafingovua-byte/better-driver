.class public final Lmb/l4;
.super Lmb/o4;
.source "SourceFile"

# interfaces
.implements Lmb/s0;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lmb/v4;

    const/4 v1, 0x0

    new-array v2, v1, [Lmb/r0;

    const-string v3, "annotation"

    const-string v4, "Annotation"

    const-string v5, "java"

    const-string v6, "lang"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lmb/v4;-><init>(Lhb/c;[Lmb/r0;[Ljava/lang/String;[Lmb/t5;)V

    const/4 v2, 0x1

    new-array v8, v2, [Lmb/s5;

    aput-object v0, v8, v1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lmb/y2;-><init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V

    return-void
.end method


# virtual methods
.method public final q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->H0(Lmb/l4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
