.class public final Lq9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;
.implements Lq9/d;


# static fields
.field public static final a:Lq9/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq9/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq9/e;->a:Lq9/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Lq9/h;
    .locals 0

    sget-object p0, Lq9/e;->a:Lq9/e;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lu8/q;->l:Lu8/q;

    return-object p0
.end method

.method public final bridge synthetic take()Lq9/h;
    .locals 0

    sget-object p0, Lq9/e;->a:Lq9/e;

    return-object p0
.end method
