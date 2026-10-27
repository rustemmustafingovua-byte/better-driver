.class public final synthetic Lkd/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/Style$OnStyleLoaded;


# instance fields
.field public final synthetic a:Lb0/p0;


# direct methods
.method public synthetic constructor <init>(Lb0/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/r;->a:Lb0/p0;

    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lorg/maplibre/android/maps/Style;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkd/r;->a:Lb0/p0;

    invoke-virtual {p0, p1}, Lb0/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
