.class public Lorg/maplibre/android/maps/AttributionDialogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;
    }
.end annotation


# static fields
.field private static final MAP_FEEDBACK_STYLE_URI_REGEX:Ljava/lang/String; = "^(.*://[^:^/]*)/(.*)/(.*)"

.field private static final MAP_FEEDBACK_URL:Ljava/lang/String; = "https://apps.mapbox.com/feedback"

.field private static final MAP_FEEDBACK_URL_LOCATION_FRAGMENT_FORMAT:Ljava/lang/String; = "/%f/%f/%f/%f/%d"

.field private static final MAP_FEEDBACK_URL_OLD:Ljava/lang/String; = "https://www.mapbox.com/map-feedback"


# instance fields
.field private attributionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/maplibre/android/attribution/Attribution;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-void
.end method

.method private getAttributionTitles()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/attribution/Attribution;

    invoke-virtual {v1}, Lorg/maplibre/android/attribution/Attribution;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private isLatestEntry(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/AttributionDialogManager;->getAttributionTitles()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showMapAttributionWebPage(I)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/maplibre/android/attribution/Attribution;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/attribution/Attribution;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/maplibre/android/attribution/Attribution;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://www.mapbox.com/map-feedback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://apps.mapbox.com/feedback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AttributionDialogManager;->buildMapFeedbackMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AttributionDialogManager;->showWebPage(Ljava/lang/String;)V

    return-void
.end method

.method private showWebPage(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    sget v0, Lorg/maplibre/android/R$string;->maplibre_attributionErrorNoBrowser:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public buildMapFeedbackMapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "https://apps.mapbox.com/feedback"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, v1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v3}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, v1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v4}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, v1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, v1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    double-to-int v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "/%f/%f/%f/%f/%d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style;->getUri()Ljava/lang/String;

    move-result-object p0

    const-string p1, "^(.*://[^:^/]*)/(.*)/(.*)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "owner"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {p1, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lorg/maplibre/android/maps/AttributionDialogManager;->showMapAttributionWebPage(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;

    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Landroid/content/Context;)V

    invoke-static {v0}, Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;->a(Lorg/maplibre/android/maps/AttributionDialogManager$AttributionBuilder;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    .line 2
    iget-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/maplibre/android/maps/AttributionDialogManager;->getAttributionTitles()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AttributionDialogManager;->showAttributionDialog([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showAttributionDialog([Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/maplibre/android/R$string;->maplibre_attributionsDialogTitle:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    sget v3, Lorg/maplibre/android/R$layout;->maplibre_attribution_list_item:I

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    return-void
.end method
