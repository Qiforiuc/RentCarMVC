﻿using MediatR;
using RentCarMVC.Data;

namespace RentCarMVC.Features.StatusTypes.Commands
{
    public record UpdateStatusCommand(Status Status) : IRequest<bool>;

    public class UpdateStatusCommandHandler : IRequestHandler<UpdateStatusCommand, bool>
    {
        private readonly DataContext _dataContext;

        public UpdateStatusCommandHandler(DataContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task<bool> Handle(UpdateStatusCommand request, CancellationToken cancellationToken)
        {
            _dataContext.Statuses.Update(request.Status);
            var result = await _dataContext.SaveChangesAsync();

            return result > 0;
        }
    }
}
