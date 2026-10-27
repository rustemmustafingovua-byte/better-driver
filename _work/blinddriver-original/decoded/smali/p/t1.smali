.class public abstract Lp/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/a1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp/a1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lp/t1;->a:Lr0/a0;

    return-void
.end method
