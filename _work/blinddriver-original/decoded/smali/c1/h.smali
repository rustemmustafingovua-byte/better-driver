.class public abstract Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lc1/h;->a:Lr0/s2;

    return-void
.end method
