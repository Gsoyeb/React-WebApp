from django.shortcuts import render
from .LiveJobsRepo import LiveJobRepository



def livejobs_list(request):
    livejobs = LiveJobRepository.get_all_live_jobs()
    return render(request, 'livejobs/testPage.html', {'livejobs': livejobs})
