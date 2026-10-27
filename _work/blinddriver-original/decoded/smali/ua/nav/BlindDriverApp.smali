.class public final Lua/nav/BlindDriverApp;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-virtual {v0, p0}, Lsc/i0;->x(Landroid/app/Application;)V

    return-void
.end method
